//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UFrmCadastroCondutor.h"
#include "UDtmEstacionamento.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "UFrmModeloCadastroCRUD"
#pragma resource "*.dfm"
TFrmCadastroCondutor *FrmCadastroCondutor;
//---------------------------------------------------------------------------
__fastcall TFrmCadastroCondutor::TFrmCadastroCondutor(TComponent* Owner)
    : TFrmModeloCadastroCRUD(Owner)
{
}
//---------------------------------------------------------------------------
