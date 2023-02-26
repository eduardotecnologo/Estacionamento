//------------------------------------------------------------------------------
#pragma hdrstop

#include "UDtmEstacionamento.h"
//------------------------------------------------------------------------------
#pragma package(smart_init)
#pragma classgroup "Vcl.Controls.TControl"
#pragma resource "*.dfm"
TdtmEstacionamento *dtmEstacionamento;

//-------------------------TdtmEstacionamento-----------------------------------
__fastcall TdtmEstacionamento::TdtmEstacionamento(TComponent* Owner)
	: TDataModule(Owner)
{

}

//-------------------------ConfigureLookAUp-------------------------------------
void __fastcall TdtmEstacionamento::ConfigureLookUp(TFDQuery* AQuery)
{
  if(AQuery->Active)
   {
	  AQuery->Close();
   }
  AQuery->Connection = cnxBaseestacionamento;
  AQuery->Open();
}

//-------------------------AtualizaLookUp---------------------------------------
void __fastcall TdtmEstacionamento::AtualizaLookUp(TFDQuery* AQuery)
{
   AQuery->Close();
   AQuery->Open();
}

//-------------------------LimpaModeloVeiculo-----------------------------------
void __fastcall TdtmEstacionamento::LimpaModeloVeiculo()
{
	if (qryVeiculoMON_COD->NewValue != qryVeiculoMON_COD->OldValue)
	{
	   if( qryVeiculo->State == dsEdit || qryVeiculo->State == dsInsert)
	   {
		 qryVeiculoMON_COD->AsVariant = Null();
	   }
	}

		/*TIntegerField *qryVeiculoMOD_COD;
		TIntegerField *qryVeiculoTIP_COD;
		TStringField *qryVeiculoVEI_PLA;*/
}
//-------------------------GraveConducao----------------------------------------
  void __fastcall TdtmEstacionamento::GraveConducao()
{
	if(qryConducao->State == dsInsert || qryConducao->State == dsEdit)
	{
        qryConducao->Post();
	}

}
//-------------------------EvAddDataHoraCorrenteNewRecord-----------------------

void __fastcall TdtmEstacionamento::EvAddDataHoraCorrenteNewRecord(
				TDataSet *DataSet)

{
	qryTicketTIC_DAT->AsDateTime = Date();
	qryTicketTIC_HOR_ENT->AsDateTime = Now();
}
//-------------------------AtribuirHoraSaidaTicket------------------------------

void __fastcall TdtmEstacionamento::AtribuirHoraSaidaTicket()
{
	qryTicket->Edit();
	qryTicketTIC_HOR_SAI->AsDateTime = Now();
}
//-------------------------Pesquise---------------------------------------------

bool __fastcall TdtmEstacionamento::Pesquise(TFDQuery *AQuery,
											 UnicodeString ANomePK,
											 int AValorPesquisa)
{
	bool resultado = false;
	if(AQuery)
	{
		try
		{
			AQuery->DisableControls(); // Desabilita os controles da tela
			AQuery->Close();
			AQuery->ParamByName(ANomePK)->AsInteger = AValorPesquisa;
			AQuery->Open();
			resultado = !AQuery->IsEmpty();
			//return resultado;
		}
		__finally
		{
			AQuery->EnableControls();
		}
		return resultado;
	}
	return resultado;
}
//-------------------------PesquiseMontadora------------------------------------

bool __fastcall TdtmEstacionamento::PesquiseMontadora(int AValorPK)
{
    return Pesquise(qryMontadora, "CODIGO", AValorPK);
}
