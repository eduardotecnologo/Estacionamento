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
//---------------------------------------------------------------------------
__fastcall TFrmCadastroVeiculo::TFrmCadastroVeiculo(TComponent* Owner)
    : TFrmModeloCadastroCRUD(Owner)
{
  dtmEstacionamento->ConfigureLookUp(qryMontadoraLK);
  dtmEstacionamento->ConfigureLookUp(qryModeloLK);
  dtmEstacionamento->ConfigureLookUp(qryTipoLK);
}
//---------------------------------------------------------------------------
void __fastcall TFrmCadastroVeiculo::EvAtualizaMontadoraLKClick(TObject *Sender)
{
   dtmEstacionamento->AtualizaLookUp(qryMontadoraLK);
}
//---------------------------------------------------------------------------

void __fastcall TFrmCadastroVeiculo::EvAtualizaModeloLKClick(TObject *Sender)
{
   dtmEstacionamento->AtualizaLookUp(qryModeloLK);
}
//---------------------------------------------------------------------------

void __fastcall TFrmCadastroVeiculo::EvAtualizaTipoLK(TObject *Sender)
{
   dtmEstacionamento->AtualizaLookUp(qryTipoLK);
}
//---------------------------------------------------------------------------

void __fastcall TFrmCadastroVeiculo::EvFiltraModeloDataChange(TObject *Sender)
{
   dtmEstacionamento->LimpaModeloVeiculo();
}
//---------------------------------------------------------------------------


