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
    ExplicitTop = 356
    ExplicitWidth = 747
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
      OnEnter = EvGravarConducao
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
      Left = 40
      Top = 32
      Width = 50
      Height = 19
      Caption = 'C'#243'digo'
      FocusControl = dbeCodigo
    end
    object Label2: TLabel
      Left = 24
      Top = 66
      Width = 66
      Height = 19
      Caption = 'Condutor'
      FocusControl = dbeCondutor
    end
    object Label3: TLabel
      Left = 39
      Top = 99
      Width = 51
      Height = 19
      Caption = 'Ve'#237'culo'
      FocusControl = dbeVeiculo
    end
    object dbeCodigo: TDBEdit
      Left = 96
      Top = 29
      Width = 121
      Height = 27
      DataField = 'CND_COD'
      DataSource = DataSourceMain
      TabOrder = 0
    end
    object dbeCondutor: TDBEdit
      Left = 96
      Top = 63
      Width = 121
      Height = 27
      DataField = 'CON_COD'
      DataSource = DataSourceMain
      TabOrder = 1
    end
    object dbeVeiculo: TDBEdit
      Left = 96
      Top = 96
      Width = 121
      Height = 27
      DataField = 'VEI_COD'
      DataSource = DataSourceMain
      TabOrder = 3
    end
    object dblkCondutor: TDBLookupComboBox
      Left = 223
      Top = 63
      Width = 234
      Height = 27
      DataField = 'CON_COD'
      DataSource = DataSourceMain
      KeyField = 'CON_COD'
      ListField = 'CON_NOM'
      ListSource = dtsCondutorLK
      PopupMenu = ppmCondutor
      TabOrder = 2
    end
    object dblkVeiculo: TDBLookupComboBox
      Left = 223
      Top = 96
      Width = 234
      Height = 27
      DataField = 'VEI_COD'
      DataSource = DataSourceMain
      KeyField = 'VEI_COD'
      ListField = 'VEI_PLA'
      ListSource = dtsVeiculoLK
      PopupMenu = ppmVeiculo
      TabOrder = 4
    end
  end
  inherited ImgAtiva: TImageList
    Left = 685
    Top = 232
  end
  inherited ImgHot: TImageList
    Left = 638
    Top = 231
  end
  inherited DataSourceMain: TDataSource
    DataSet = dtmEstacionamento.qryConducao
    Left = 573
    Top = 232
  end
  inherited ActionListCRUD: TActionList
    Left = 444
    Top = 232
  end
  object dtsTicket: TDataSource
    DataSet = dtmEstacionamento.qryTicket
    Left = 508
    Top = 232
  end
  object dtsCondutorLK: TDataSource
    DataSet = qryCondutorLK
    Left = 290
    Top = 233
  end
  object qryCondutorLK: TFDQuery
    Connection = dtmEstacionamento.cnxBaseestacionamento
    SQL.Strings = (
      'SELECT '
      '    CON_COD,'
      '    CON_NOM '
      'FROM CONDUTOR'
      'ORDER BY CON_NOM;')
    Left = 291
    Top = 289
  end
  object dtsVeiculoLK: TDataSource
    DataSet = qryVeiculoLK
    Left = 367
    Top = 232
  end
  object qryVeiculoLK: TFDQuery
    Active = True
    Connection = dtmEstacionamento.cnxBaseestacionamento
    SQL.Strings = (
      'SELECT VEI_COD,'
      '       VEI_PLA'
      'FROM VEICULO'
      'ORDER BY VEI_PLA;')
    Left = 368
    Top = 288
  end
  object ppmCondutor: TPopupMenu
    Left = 205
    Top = 236
    object AtualizarCondutor1: TMenuItem
      Caption = 'Atualizar Condutor'
      OnClick = EvAtualizarCondutor
    end
  end
  object ppmVeiculo: TPopupMenu
    Left = 206
    Top = 286
    object AtualizaVeculo1: TMenuItem
      Caption = 'Atualiza Ve'#237'culo'
      OnClick = EvAtualizarVeiculo
    end
  end
end
