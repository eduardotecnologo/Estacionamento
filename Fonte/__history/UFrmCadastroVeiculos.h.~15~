//---------------------------------------------------------------------------

#ifndef UFrmCadastroVeiculosH
#define UFrmCadastroVeiculosH
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
#include <Vcl.Menus.hpp>
//---------------------------------------------------------------------------
class TFrmCadastroVeiculo : public TFrmModeloCadastroCRUD
{
__published:	// IDE-managed Components
    TLabel *Label1;
    TDBEdit *DBEditCodigo;
    TLabel *Label2;
    TDBEdit *DBEditMontadora;
    TLabel *Label3;
    TDBEdit *DBEditModelo;
    TLabel *Label4;
    TDBEdit *DBEditTipo;
    TLabel *Label5;
    TDBEdit *DBEditPlaca;
    TLabel *Label6;
    TDBEdit *DBEditFabricacao;
    TDBLookupComboBox *DBLkCbxMontadora;
    TFDQuery *qryMontadoraLK;
    TDataSource *dtsMontadoraLK;
    TDBLookupComboBox *dblkModelo;
    TDataSource *dtsModeloLK;
    TFDQuery *qryModeloLK;
    TDBLookupComboBox *dblkTipo;
    TDataSource *dtsTipoLK;
    TFDQuery *qryTipoLK;
    TPopupMenu *ppmMontadoraLK;
    TMenuItem *AtualizeMontadora1;
    TPopupMenu *ppmModeloLK;
    TMenuItem *AtualizaModelo1;
    TPopupMenu *ppmTipoLK;
    TMenuItem *AtualizaTipo1;
    void __fastcall EvAtualizaMontadoraLKClick(TObject *Sender);
    void __fastcall EvAtualizaModeloLKClick(TObject *Sender);
    void __fastcall EvAtualizaTipoLK(TObject *Sender);
    void __fastcall EvFiltraModeloDataChange(TObject *Sender);
private:	// User declarations
public:		// User declarations
    __fastcall TFrmCadastroVeiculo(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFrmCadastroVeiculo *FrmCadastroVeiculo;
//---------------------------------------------------------------------------
#endif
