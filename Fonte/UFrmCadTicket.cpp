//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UFrmCadTicket.h"
#include "UDtmEstacionamento.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "UFrmModeloCadastroCRUD"
#pragma resource "*.dfm"
TFrmCadTicket *FrmCadTicket;
//---------------------------------------------------------------------------
__fastcall TFrmCadTicket::TFrmCadTicket(TComponent* Owner)
    : TFrmModeloCadastroCRUD(Owner)
{
}
//---------------------------------------------------------------------------
