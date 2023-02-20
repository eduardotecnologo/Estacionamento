//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UFrmCadastroModelo.h"
#include "UDtmEstacionamento.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "UFrmModeloCadastroCRUD"
#pragma resource "*.dfm"
TFrmCadastroModelo *FrmCadastroModelo;
//------------------------Construtor - TFrmCadastroModelo-----------------------
__fastcall TFrmCadastroModelo::TFrmCadastroModelo(TComponent* Owner)
           : TFrmModeloCadastroCRUD(Owner)
{
   dtmEstacionamento->ConfigureLookUp(qryMontadoraLK);
}

void __fastcall TFrmCadastroModelo::EvAtualizeDadosMontadora(TObject *Sender)
{
  dtmEstacionamento->AtualizaLookUp(qryMontadoraLK);

}

void __fastcall TFrmCadastroModelo::EvSairFormulario(TObject *Sender)
{
   Close();
}

//---------------------------------------------------------------------------

