inherited FrmCadastroVeiculo: TFrmCadastroVeiculo
  Caption = 'Cadastro de Veiculos'
  ClientHeight = 359
  ClientWidth = 811
  ExplicitWidth = 817
  ExplicitHeight = 388
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel [0]
    Left = 39
    Top = 27
    Width = 50
    Height = 19
    Caption = '&C'#243'digo'
    FocusControl = DBEditCodigo
  end
  object Label2: TLabel [1]
    Left = 14
    Top = 60
    Width = 75
    Height = 19
    Caption = 'M&ontadora'
    FocusControl = DBEditMontadora
  end
  object Label3: TLabel [2]
    Left = 38
    Top = 93
    Width = 51
    Height = 19
    Caption = '&Modelo'
    FocusControl = DBEditModelo
  end
  object Label4: TLabel [3]
    Left = 56
    Top = 126
    Width = 32
    Height = 19
    Caption = '&Tipo'
    FocusControl = DBEditTipo
  end
  object Label5: TLabel [4]
    Left = 52
    Top = 159
    Width = 36
    Height = 19
    Caption = '&Placa'
    FocusControl = DBEditPlaca
  end
  object Label6: TLabel [5]
    Left = 231
    Top = 159
    Width = 74
    Height = 19
    Caption = '&Fabrica'#231#227'o'
    FocusControl = DBEditFabricacao
  end
  object Label7: TLabel [6]
    Left = 8
    Top = 224
    Width = 37
    Height = 19
    Caption = 'Utils:'
  end
  object Label8: TLabel [7]
    Left = 135
    Top = 252
    Width = 278
    Height = 19
    Caption = 'Campo com preenchimento autom'#225'tico'
  end
  inherited tlbCadastroCRUD: TToolBar
    Top = 296
    Width = 811
    Height = 63
    ButtonWidth = 115
    TabOrder = 7
    ExplicitTop = 296
    ExplicitWidth = 811
    ExplicitHeight = 63
    inherited btnNovo: TToolButton
      ExplicitWidth = 115
    end
    inherited ToolButton5: TToolButton
      Left = 115
      ExplicitLeft = 115
    end
    inherited btnPesquisar: TToolButton
      Left = 130
      ExplicitLeft = 130
      ExplicitWidth = 115
    end
    inherited ToolButton4: TToolButton
      Left = 245
      ExplicitLeft = 245
    end
    inherited btnUpdate: TToolButton
      Left = 260
      ExplicitLeft = 260
      ExplicitWidth = 115
    end
    inherited bntCancelar: TToolButton [5]
      Left = 375
      ExplicitLeft = 375
      ExplicitWidth = 115
    end
    inherited btnExcluir: TToolButton [6]
      Left = 490
      ExplicitLeft = 490
      ExplicitWidth = 115
    end
    inherited ToolButton1: TToolButton [7]
      Left = 605
      ExplicitLeft = 605
    end
    inherited btnSair: TToolButton [8]
      Left = 620
      ExplicitLeft = 620
      ExplicitWidth = 115
    end
    inherited ToolButton2: TToolButton [9]
      Left = 735
      ExplicitLeft = 735
    end
    inherited ToolButton3: TToolButton [10]
      Left = 750
      ExplicitLeft = 750
    end
  end
  object DBEditCodigo: TDBEdit [9]
    Left = 95
    Top = 24
    Width = 130
    Height = 27
    DataField = 'VEI_COD'
    DataSource = DataSourceMain
    TabOrder = 0
  end
  object DBEditMontadora: TDBEdit [10]
    Left = 95
    Top = 57
    Width = 130
    Height = 27
    DataField = 'MON_COD'
    DataSource = DataSourceMain
    TabOrder = 1
  end
  object DBEditModelo: TDBEdit [11]
    Left = 94
    Top = 90
    Width = 131
    Height = 27
    Color = clGrayText
    DataField = 'MOD_COD'
    DataSource = DataSourceMain
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenu
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object DBEditTipo: TDBEdit [12]
    Left = 94
    Top = 156
    Width = 131
    Height = 27
    DataField = 'VEI_PLA'
    DataSource = DataSourceMain
    TabOrder = 4
  end
  object DBEditPlaca: TDBEdit [13]
    Left = 94
    Top = 123
    Width = 131
    Height = 27
    CharCase = ecUpperCase
    DataField = 'TIP_COD'
    DataSource = DataSourceMain
    TabOrder = 5
  end
  object DBEditFabricacao: TDBEdit [14]
    Left = 311
    Top = 156
    Width = 139
    Height = 27
    DataField = 'VEI_ANO_FAB'
    DataSource = DataSourceMain
    TabOrder = 6
  end
  object DBLkCbxMontadora: TDBLookupComboBox [15]
    Left = 231
    Top = 57
    Width = 219
    Height = 27
    DataField = 'MON_COD'
    DataSource = DataSourceMain
    KeyField = 'MON_COD'
    ListField = 'MON_NOM'
    ListSource = dtsMontadoraLK
    PopupMenu = ppmMontadoraLK
    TabOrder = 2
  end
  object dblkModelo: TDBLookupComboBox [16]
    Left = 231
    Top = 90
    Width = 219
    Height = 27
    DataField = 'MOD_COD'
    DataSource = DataSourceMain
    KeyField = 'MOD_COD'
    ListField = 'MOD_NOM'
    ListSource = dtsModeloLK
    PopupMenu = ppmModeloLK
    TabOrder = 8
  end
  object dblkTipo: TDBLookupComboBox [17]
    Left = 231
    Top = 123
    Width = 219
    Height = 27
    DataField = 'TIP_COD'
    DataSource = DataSourceMain
    KeyField = 'TIP_COD'
    ListField = 'TIP_DES'
    ListSource = dtsTipoLK
    PopupMenu = ppmTipoLK
    TabOrder = 9
  end
  object Edit1: TEdit [18]
    Left = 8
    Top = 249
    Width = 121
    Height = 27
    Color = cl3DDkShadow
    TabOrder = 10
  end
  object ScrollBar1: TScrollBar [19]
    Left = 776
    Top = 8
    Width = 20
    Height = 351
    LargeChange = 5
    PageSize = 0
    TabOrder = 11
  end
  inherited ImgAtiva: TImageList
    Left = 704
    Top = 8
  end
  inherited ImgHot: TImageList
    Left = 624
    Top = 8
  end
  inherited DataSourceMain: TDataSource
    DataSet = dtmEstacionamento.qryVeiculo
    Left = 624
    Top = 64
  end
  inherited ActionListCRUD: TActionList
    Left = 704
    Top = 64
  end
  object qryMontadoraLK: TFDQuery
    Active = True
    Connection = dtmEstacionamento.cnxBaseestacionamento
    SQL.Strings = (
      'SELECT '
      '      MON_COD,'
      '      MON_NOM'
      'FROM MONTADORA'
      'ORDER BY MON_NOM;')
    Left = 704
    Top = 120
  end
  object dtsMontadoraLK: TDataSource
    DataSet = qryMontadoraLK
    OnDataChange = EvFiltraModeloDataSet
    Left = 536
    Top = 64
  end
  object dtsModeloLK: TDataSource
    DataSet = qryModeloLK
    Left = 536
    Top = 8
  end
  object qryModeloLK: TFDQuery
    MasterSource = dtsMontadoraLK
    MasterFields = 'MON_COD'
    Connection = dtmEstacionamento.cnxBaseestacionamento
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT MOD_COD, '
      '       MOD_NOM '
      'FROM MODELO '
      '     WHERE MON_COD = :MON_COD'
      'ORDER BY MOD_NOM;')
    Left = 624
    Top = 120
    ParamData = <
      item
        Name = 'MON_COD'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
  end
  object dtsTipoLK: TDataSource
    DataSet = qryTipoLK
    Left = 536
    Top = 120
  end
  object qryTipoLK: TFDQuery
    Active = True
    Connection = dtmEstacionamento.cnxBaseestacionamento
    SQL.Strings = (
      'SELECT TIP_COD,'
      '       TIP_DES'
      ' FROM TIPO'
      'ORDER BY TIP_DES;')
    Left = 704
    Top = 168
  end
  object ppmMontadoraLK: TPopupMenu
    Left = 448
    Top = 8
    object AtualizeMontadora1: TMenuItem
      Caption = 'Atualize Montadora'
      OnClick = EvAtualizaMontadoraLKClick
    end
  end
  object ppmModeloLK: TPopupMenu
    Left = 368
    Top = 8
    object AtualizaModelo1: TMenuItem
      Caption = 'Atualiza Modelo'
      OnClick = EvAtualizaModeloLKClick
    end
  end
  object ppmTipoLK: TPopupMenu
    Left = 304
    Top = 8
    object AtualizaTipo1: TMenuItem
      Caption = 'Atualiza Tipo'
      OnClick = EvAtualizaTipoLK
    end
  end
end
