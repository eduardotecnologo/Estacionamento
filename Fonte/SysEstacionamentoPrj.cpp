//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include <tchar.h>
//---------------------------------------------------------------------------
USEFORM("UFrmCadastroMontadora.cpp", FrmCadastroMontadora);
USEFORM("UFrmCadastroVeiculos.cpp", FrmCadastroVeiculo);
USEFORM("UFrmCadTicket.cpp", FrmCadTicket);
USEFORM("UFrmModeloCadastroCRUD.cpp", FrmModeloCadastroCRUD);
USEFORM("UFrmPrincipal.cpp", frmPrincipal);
USEFORM("UFrmCadastrarTipo.cpp", FrmCadastroTipo);
USEFORM("UFrmCadastroCondutor.cpp", FrmCadastroCondutor);
USEFORM("UFrmCadastroModelo.cpp", FrmCadastroModelo);
USEFORM("UDtmEstacionamento.cpp", dtmEstacionamento); /* TDataModule: File Type */
//---------------------------------------------------------------------------
int WINAPI _tWinMain(HINSTANCE, HINSTANCE, LPTSTR, int)
{
    try
    {
         Application->Initialize();
         Application->MainFormOnTaskBar = true;
         Application->CreateForm(__classid(TfrmPrincipal), &frmPrincipal);
         Application->CreateForm(__classid(TFrmCadTicket), &FrmCadTicket);
         Application->CreateForm(__classid(TdtmEstacionamento), &dtmEstacionamento);
         Application->Run();
    }
    catch (Exception &exception)
    {
         Application->ShowException(&exception);
    }
    catch (...)
    {
         try
         {
             throw Exception("");
         }
         catch (Exception &exception)
         {
             Application->ShowException(&exception);
         }
    }
    return 0;
}
//---------------------------------------------------------------------------
