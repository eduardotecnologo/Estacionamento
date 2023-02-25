inherited FrmCadTicket: TFrmCadTicket
  Caption = 'Cadastro de Ticket'
  ClientHeight = 421
  ClientWidth = 747
  ExplicitWidth = 753
  ExplicitHeight = 450
  PixelsPerInch = 96
  TextHeight = 19
  inherited tlbCadastroCRUD: TToolBar
    Top = 356
    Width = 747
    ExplicitTop = 349
  end
  object grbTicket: TGroupBox [1]
    Left = 8
    Top = 151
    Width = 731
    Height = 202
    Caption = '[Ticket]'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 21
      Width = 727
      Height = 179
      Align = alClient
      DataSource = dtsTicket
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object grbConducao: TGroupBox [2]
    Left = 8
    Top = 8
    Width = 731
    Height = 137
    Caption = '[Condu'#231#227'o]'
    TabOrder = 2
    object Label1: TLabel
      Left = 38
      Top = 32
      Width = 50
      Height = 19
      Caption = 'C'#243'digo'
      FocusControl = dbeCodigo
    end
    object Label2: TLabel
      Left = 22
      Top = 64
      Width = 66
      Height = 19
      Caption = 'Condutor'
      FocusControl = dbeCondutor
    end
    object Label3: TLabel
      Left = 37
      Top = 98
      Width = 51
      Height = 19
      Caption = 'Ve'#237'culo'
      FocusControl = dbeVeiculo
    end
    object dbeCodigo: TDBEdit
      Left = 94
      Top = 29
      Width = 172
      Height = 27
      DataField = 'CND_COD'
      DataSource = DataSourceMain
      TabOrder = 0
    end
    object dbeCondutor: TDBEdit
      Left = 94
      Top = 62
      Width = 172
      Height = 27
      DataField = 'CON_COD'
      DataSource = DataSourceMain
      TabOrder = 1
    end
    object dbeVeiculo: TDBEdit
      Left = 94
      Top = 95
      Width = 172
      Height = 27
      DataField = 'VEI_COD'
      DataSource = DataSourceMain
      TabOrder = 2
    end
    object dblkVeiculo: TDBLookupComboBox
      Left = 272
      Top = 95
      Width = 249
      Height = 27
      DataField = 'VEI_COD'
      DataSource = DataSourceMain
      KeyField = 'VEI_COD'
      ListField = 'VEI_PLA'
      ListSource = dtsVeiculoLK
      TabOrder = 3
    end
    object dblkCondutor: TDBLookupComboBox
      Left = 272
      Top = 62
      Width = 249
      Height = 27
      DataField = 'CON_COD'
      DataSource = DataSourceMain
      KeyField = 'CON_COD'
      ListField = 'CON_NOM'
      ListSource = dtsCondutorLK
      TabOrder = 4
      OnClick = dblkCondutorClick
    end
  end
  inherited ImgAtiva: TImageList
    Left = 704
    Top = 232
  end
  inherited ImgHot: TImageList
    Left = 657
    Top = 231
  end
  inherited DataSourceMain: TDataSource
    DataSet = dtmEstacionamento.qryConducao
    Left = 592
    Top = 232
  end
  inherited ActionListCRUD: TActionList
    Left = 463
    Top = 232
  end
  object dtsTicket: TDataSource
    DataSet = dtmEstacionamento.qryTicket
    Left = 527
    Top = 232
  end
  object dtsCondutorLK: TDataSource
    DataSet = qryCondutorLK
    Left = 365
    Top = 231
  end
  object qryCondutorLK: TFDQuery
    Connection = dtmEstacionamento.cnxBaseestacionamento
    SQL.Strings = (
      'SELECT '
      '    CON_COD,'
      '    CON_NOM '
      'FROM CONDUTOR'
      'ORDER BY CON_NOM;')
    Left = 362
    Top = 287
  end
  object dtsVeiculoLK: TDataSource
    DataSet = qryVeiculoLK
    Left = 274
    Top = 231
  end
  object qryVeiculoLK: TFDQuery
    Active = True
    Connection = dtmEstacionamento.cnxBaseestacionamento
    SQL.Strings = (
      'SELECT VEI_COD,'
      '       VEI_PLA'
      'FROM VEICULO'
      'ORDER BY VEI_PLA;')
    Left = 275
    Top = 287
  end
end