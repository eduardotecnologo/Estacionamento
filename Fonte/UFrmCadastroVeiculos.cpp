//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UFrmCadastroVeiculos.h"
#include "UDtmEstacionamento.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "UFrmModeloCadastroCRUD"
#pragma resource "*.dfm"
TFrmCadastroVeiculo *FrmCadastroVeiculo;
//----------------------TFrmCadastroVeiculo-------------------------------------
__fastcall TFrmCadastroVeiculo::TFrmCadastroVeiculo(TComponent* Owner)
	: TFrmModeloCadastroCRUD(Owner)
{
  dtmEstacionamento->ConfigureLookUp(qryMontadoraLK);
  dtmEstacionamento->ConfigureLookUp(qryModeloLK);
  dtmEstacionamento->ConfigureLookUp(qryTipoLK);
}
//----------------------EvAtualizaMontadoraLKClick------------------------------
void __fastcall TFrmCadastroVeiculo::EvAtualizaMontadoraLKClick(TObject *Sender)
{
   dtmEstacionamento->AtualizaLookUp(qryMontadoraLK);
}
//----------------------EvAtualizaModeloLKClick---------------------------------

void __fastcall TFrmCadastroVeiculo::EvAtualizaModeloLKClick(TObject *Sender)
{
   dtmEstacionamento->AtualizaLookUp(qryModeloLK);
}
//----------------------EvAtualizaTipoLK----------------------------------------

void __fastcall TFrmCadastroVeiculo::EvAtualizaTipoLK(TObject *Sender)
{
   dtmEstacionamento->AtualizaLookUp(qryTipoLK);
}
//----------------------EvFiltraModeloDataChange--------------------------------

//---------------------------------------------------------------------------


void __fastcall TFrmCadastroVeiculo::EvFiltraModeloDataSet(TObject *Sender, TField *Field)

{
   dtmEstacionamento->LimpaModeloVeiculo();
}
//---------------------------------------------------------------------------

