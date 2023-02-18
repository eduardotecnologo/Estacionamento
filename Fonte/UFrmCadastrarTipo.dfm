inherited FrmCadastroTipo: TFrmCadastroTipo
  Caption = 'Cadastrar o Tipo'
  ClientHeight = 229
  ClientWidth = 677
  ExplicitWidth = 683
  ExplicitHeight = 258
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel [0]
    Left = 49
    Top = 48
    Width = 56
    Height = 19
    Caption = '&C'#243'digo:'
    FocusControl = dbEditCodigo
  end
  object Label2: TLabel [1]
    Left = 32
    Top = 88
    Width = 73
    Height = 19
    Caption = '&Descri'#231#227'o:'
    FocusControl = dbEditDescricao
  end
  inherited tlbCadastroCRUD: TToolBar
    Top = 164
    Width = 677
    ButtonWidth = 97
    TabOrder = 2
    ExplicitTop = 164
    ExplicitWidth = 729
    inherited btnNovo: TToolButton
      ExplicitWidth = 97
    end
    inherited ToolButton5: TToolButton
      Left = 97
      ExplicitLeft = 97
    end
    inherited btnPesquisar: TToolButton
      Left = 112
      ExplicitLeft = 112
      ExplicitWidth = 97
    end
    inherited ToolButton4: TToolButton
      Left = 209
      ExplicitLeft = 209
    end
    inherited btnUpdate: TToolButton
      Left = 224
      ExplicitLeft = 224
      ExplicitWidth = 97
    end
    inherited ToolButton1: TToolButton [5]
      Left = 321
      ExplicitLeft = 321
    end
    inherited btnExcluir: TToolButton [6]
      Left = 336
      ExplicitLeft = 336
      ExplicitWidth = 97
    end
    inherited ToolButton2: TToolButton
      Left = 433
      ExplicitLeft = 433
    end
    inherited bntCancelar: TToolButton
      Left = 448
      ExplicitLeft = 448
      ExplicitWidth = 97
    end
    inherited ToolButton3: TToolButton
      Left = 545
      ExplicitLeft = 545
    end
    inherited btnSair: TToolButton
      Left = 560
      ExplicitLeft = 560
      ExplicitWidth = 97
    end
  end
  object dbEditCodigo: TDBEdit [3]
    Left = 111
    Top = 45
    Width = 170
    Height = 27
    CharCase = ecUpperCase
    DataField = 'TIP_COD'
    DataSource = DataSourceMain
    TabOrder = 0
  end
  object dbEditDescricao: TDBEdit [4]
    Left = 111
    Top = 85
    Width = 397
    Height = 27
    CharCase = ecUpperCase
    DataField = 'TIP_DES'
    DataSource = DataSourceMain
    TabOrder = 1
  end
  inherited ImgAtiva: TImageList
    Left = 568
  end
  inherited ImgHot: TImageList
    Left = 560
    Top = 88
  end
  inherited DataSourceMain: TDataSource
    DataSet = dtmEstacionamento.qryTipo
    Left = 632
    Top = 88
  end
  inherited ActionListCRUD: TActionList
    Left = 632
  end
end
