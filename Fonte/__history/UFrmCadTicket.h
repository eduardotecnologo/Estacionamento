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
#include <FireDAC.Comp.Client.hpp>
#include <FireDAC.Comp.DataSet.hpp>
#include <FireDAC.DApt.hpp>
#include <FireDAC.DApt.Intf.hpp>
#include <FireDAC.DatS.hpp>
#include <FireDAC.Phys.Intf.hpp>
#include <FireDAC.Stan.Async.hpp>
#include <FireDAC.Stan.Error.hpp>
#include <FireDAC.Stan.Intf.hpp>
#include <FireDAC.Stan.Option.hpp>
#include <FireDAC.Stan.Param.hpp>
#include <Vcl.DBCtrls.hpp>
#include <Vcl.Mask.hpp>
//---------------------------------------------------------------------------
class TFrmCadTicket : public TFrmModeloCadastroCRUD
{
__published:	// IDE-managed Components
    TGroupBox *grbTicket;
	TDataSource *dtsTicket;
    TDBGrid *DBGrid1;
	TGroupBox *grbConducao;
	TLabel *Label1;
	TDBEdit *dbeCodigo;
	TLabel *Label2;
	TDBEdit *dbeCondutor;
	TLabel *Label3;
	TDBEdit *dbeVeiculo;
	TDataSource *dtsCondutorLK;
	TFDQuery *qryCondutorLK;
	TDataSource *dtsVeiculoLK;
	TFDQuery *qryVeiculoLK;
	TDBLookupComboBox *dblkVeiculo;
	TDBLookupComboBox *dblkCondutor;
private:	// User declarations
public:		// User declarations
    __fastcall TFrmCadTicket(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFrmCadTicket *FrmCadTicket;
//---------------------------------------------------------------------------
#endif