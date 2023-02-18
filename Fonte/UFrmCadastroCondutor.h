//---------------------------------------------------------------------------

#ifndef UFrmCadastroCondutorH
#define UFrmCadastroCondutorH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "UFrmModeloCadastroCRUD.h"
#include <Vcl.ComCtrls.hpp>
#include <Vcl.ToolWin.hpp>
#include <Data.DB.hpp>
#include <System.Actions.hpp>
#include <System.ImageList.hpp>
#include <Vcl.ActnList.hpp>
#include <Vcl.DBActns.hpp>
#include <Vcl.ImgList.hpp>
#include <Vcl.DBCtrls.hpp>
#include <Vcl.Mask.hpp>
//---------------------------------------------------------------------------
class TFrmCadastroCondutor : public TFrmModeloCadastroCRUD
{
__published:	// IDE-managed Components
    TLabel *Label1;
    TDBEdit *dbEditCod;
    TLabel *Label2;
    TDBEdit *dbEditNome;
    TLabel *Label3;
    TDBEdit *dbEditCNH;
    TDBEdit *dbEditCPF;
    TLabel *Label4;
private:	// User declarations
public:		// User declarations
    __fastcall TFrmCadastroCondutor(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFrmCadastroCondutor *FrmCadastroCondutor;
//---------------------------------------------------------------------------
#endif
