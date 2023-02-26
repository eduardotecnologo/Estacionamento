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
	dtmEstacionamento->ConfigureLookUp(qryCondutorLK);
	dtmEstacionamento->ConfigureLookUp(qryVeiculoLK);
}
//---------------------------------------------------------------------------
void __fastcall TFrmCadTicket::EvAtualizarCondutor(TObject *Sender)
{
	dtmEstacionamento->AtualizaLookUp(qryCondutorLK);
}
//---------------------------------------------------------------------------


void __fastcall TFrmCadTicket::EvAtualizarVeiculo(TObject *Sender)
{
	dtmEstacionamento->AtualizaLookUp(qryVeiculoLK);
}
//---------------------------------------------------------------------------

void __fastcall TFrmCadTicket::EvGravarConducao(TObject *Sender)
{
	dtmEstacionamento->GraveConducao();
}
//---------------------------------------------------------------------------

void __fastcall TFrmCadTicket::EvAddHoraAtualSaidaTicketSelecionado(TObject *Sender)

{
    dtmEstacionamento->AtribuirHoraSaidaTicket();
}
//---------------------------------------------------------------------------

