//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UFrmPrincipal.h"
#include "UFrmCadastroCondutor.h"
#include "UFrmCadastroMontadora.h"
#include "UFrmCadastroModelo.h"
#include "UFrmCadastroVeiculos.h"
#include "UFrmCadastrarTipo.h"
#include "UFrmCadTicket.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmPrincipal *frmPrincipal;
//---------------------------------------------------------------------------
__fastcall TfrmPrincipal::TfrmPrincipal(TComponent* Owner) : TForm(Owner)
{

}
//---------------------------------------------------------------------------
void __fastcall TfrmPrincipal::EvEncerrarSistema(TObject *Sender)
{
   Close();
}
//---------------------------------------------------------------------------


void __fastcall TfrmPrincipal::EvCadastroCondutorClick(TObject *Sender)
{
   new TFrmCadastroCondutor(this);
}
//---------------------------------------------------------------------------

void __fastcall TfrmPrincipal::EvCadastroMontadora(TObject *Sender)
{
   new TFrmCadastroMontadora(this);
}
//---------------------------------------------------------------------------

void __fastcall TfrmPrincipal::EvCadastroModelo(TObject *Sender)
{
   new TFrmCadastroModelo(this);
}
//---------------------------------------------------------------------------

void __fastcall TfrmPrincipal::EvCadastroVeiculos(TObject *Sender)
{
   new TFrmCadastroVeiculo(this);
}
//---------------------------------------------------------------------------
void __fastcall TfrmPrincipal::EvCadastrarTipo(TObject *Sender)
{
   new TFrmCadastroTipo(this);
}
void __fastcall TfrmPrincipal::EvCadTicket(TObject *Sender)
{
   new TFrmCadTicket(this);
}
//---------------------------------------------------------------------------

