inherited FrmCadastroMontadora: TFrmCadastroMontadora
  Caption = 'Cadastro Montadora'
  ClientHeight = 178
  ClientWidth = 530
  ExplicitWidth = 536
  ExplicitHeight = 207
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel [0]
    Left = 24
    Top = 44
    Width = 50
    Height = 19
    Caption = '&C'#243'digo'
    FocusControl = dbECodigo
  end
  object Label2: TLabel [1]
    Left = 32
    Top = 72
    Width = 42
    Height = 19
    Caption = '&Nome'
    FocusControl = dbEditNome
  end
  inherited tlbCadastroCRUD: TToolBar
    Top = 113
    Width = 530
    ButtonHeight = 62
    ButtonWidth = 74
    TabOrder = 2
    ExplicitTop = 151
    inherited btnNovo: TToolButton
      ExplicitWidth = 74
      ExplicitHeight = 62
    end
    inherited ToolButton5: TToolButton
      Left = 74
      ExplicitLeft = 74
      ExplicitHeight = 62
    end
    inherited btnPesquisar: TToolButton
      Left = 89
      ExplicitLeft = 89
      ExplicitWidth = 74
      ExplicitHeight = 62
    end
    inherited ToolButton4: TToolButton
      Left = 163
      ExplicitLeft = 163
      ExplicitHeight = 62
    end
    inherited btnUpdate: TToolButton
      Left = 178
      ExplicitLeft = 178
      ExplicitWidth = 74
      ExplicitHeight = 62
    end
    inherited btnExcluir: TToolButton
      Left = 252
      ExplicitLeft = 252
      ExplicitWidth = 74
      ExplicitHeight = 62
    end
    inherited ToolButton1: TToolButton
      Left = 326
      ExplicitLeft = 326
      ExplicitHeight = 62
    end
    inherited ToolButton2: TToolButton
      Left = 341
      ExplicitLeft = 341
      ExplicitHeight = 62
    end
    inherited bntCancelar: TToolButton
      Left = 356
      ExplicitLeft = 356
      ExplicitWidth = 74
      ExplicitHeight = 62
    end
    inherited ToolButton3: TToolButton
      Left = 430
      ExplicitLeft = 430
      ExplicitHeight = 62
    end
    inherited btnSair: TToolButton
      Left = 445
      ExplicitLeft = 445
      ExplicitWidth = 74
      ExplicitHeight = 62
    end
  end
  object dbECodigo: TDBEdit [3]
    Left = 80
    Top = 36
    Width = 159
    Height = 27
    DataField = 'MON_COD'
    DataSource = DataSourceMain
    TabOrder = 0
    OnExit = EvPesquisarMontadoraExit
  end
  object dbEditNome: TDBEdit [4]
    Left = 80
    Top = 69
    Width = 435
    Height = 27
    CharCase = ecUpperCase
    DataField = 'MON_NOM'
    DataSource = DataSourceMain
    TabOrder = 1
  end
  inherited ImgAtiva: TImageList
    Left = 384
    Top = 8
  end
  inherited ImgHot: TImageList
    Left = 336
    Top = 8
  end
  inherited DataSourceMain: TDataSource
    DataSet = dtmEstacionamento.qryMontadora
    Left = 432
    Top = 8
  end
  inherited ActionListCRUD: TActionList
    Left = 272
    Top = 8
  end
end
