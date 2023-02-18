//---------------------------------------------------------------------------

#ifndef UFrmCadTicketH
#define UFrmCadTicketH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "UFrmModeloCadastroCRUD.h"
#include <System.ImageList.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.ImgList.hpp>
#include <Vcl.ToolWin.hpp>
#include <Data.DB.hpp>
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include <Vcl.DBActns.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.Grids.hpp>
//---------------------------------------------------------------------------
class TFrmCadTicket : public TFrmModeloCadastroCRUD
{
__published:	// IDE-managed Components
    TGroupBox *grbConducao;
    TGroupBox *grbTicket;
    TDataSource *dtsTicket;
    TDBGrid *DBGrid1;
private:	// User declarations
public:		// User declarations
    __fastcall TFrmCadTicket(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFrmCadTicket *FrmCadTicket;
//---------------------------------------------------------------------------
#endif
