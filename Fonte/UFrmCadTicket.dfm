inherited FrmCadTicket: TFrmCadTicket
  Caption = 'Cadastro de Ticket'
  ClientHeight = 480
  ClientWidth = 524
  ExplicitWidth = 530
  ExplicitHeight = 509
  PixelsPerInch = 96
  TextHeight = 19
  inherited tlbCadastroCRUD: TToolBar
    Top = 415
    Width = 524
    ButtonHeight = 54
    ButtonWidth = 75
    ExplicitTop = 377
    ExplicitWidth = 524
    inherited btnNovo: TToolButton
      ExplicitWidth = 75
      ExplicitHeight = 54
    end
    inherited ToolButton5: TToolButton
      Left = 75
      ExplicitLeft = 75
      ExplicitHeight = 54
    end
    inherited btnPesquisar: TToolButton
      Left = 90
      ExplicitLeft = 90
      ExplicitWidth = 75
      ExplicitHeight = 54
    end
    inherited ToolButton4: TToolButton
      Left = 165
      ExplicitLeft = 165
      ExplicitHeight = 54
    end
    inherited btnUpdate: TToolButton
      Left = 180
      ExplicitLeft = 180
      ExplicitWidth = 75
      ExplicitHeight = 54
    end
    inherited ToolButton1: TToolButton [5]
      Left = 255
      ExplicitLeft = 255
      ExplicitHeight = 54
    end
    inherited btnExcluir: TToolButton [6]
      Left = 270
      ExplicitLeft = 270
      ExplicitWidth = 75
      ExplicitHeight = 54
    end
    inherited ToolButton2: TToolButton
      Left = 345
      ExplicitLeft = 345
      ExplicitHeight = 54
    end
    inherited bntCancelar: TToolButton
      Left = 360
      ExplicitLeft = 360
      ExplicitWidth = 75
      ExplicitHeight = 54
    end
    inherited ToolButton3: TToolButton
      Left = 435
      ExplicitLeft = 435
      ExplicitHeight = 54
    end
    inherited btnSair: TToolButton
      Left = 450
      ExplicitLeft = 450
      ExplicitWidth = 75
      ExplicitHeight = 54
    end
  end
  object grbTicket: TGroupBox [1]
    Left = 3
    Top = 180
    Width = 513
    Height = 229
    Caption = '[Ticket]'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 21
      Width = 509
      Height = 206
      Align = alClient
      DataSource = dtsTicket
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnEnter = EvGravarConducao
      Columns = <
        item
          Expanded = False
          FieldName = 'TIC_NUM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CND_COD'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'TIC_DAT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIC_HOR_ENT'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIC_HOR_SAI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIC_VAL_PAG'
          Width = 103
          Visible = True
        end>
    end
  end
  object grbConducao: TGroupBox [2]
    Left = 8
    Top = 8
    Width = 726
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
      Width = 276
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
  object btnHoraSaida: TBitBtn [3]
    Left = 345
    Top = 161
    Width = 168
    Height = 25
    Hint = 'Adiciona a hora corrente no ticket selecionado.'
    Caption = '&Hora Atual de Sa'#237'da'
    Kind = bkRetry
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = EvAddHoraAtualSaidaTicketSelecionado
  end
  inherited ImgAtiva: TImageList
    Left = 383
    Top = 342
  end
  inherited ImgDesabilitado: TImageList
    Left = 424
    Top = 342
  end
  inherited ImgHot: TImageList
    Left = 342
    Top = 341
  end
  inherited DataSourceMain: TDataSource
    DataSet = dtmEstacionamento.qryConducao
    Left = 421
    Top = 278
  end
  inherited ActionListCRUD: TActionList
    Left = 292
    Top = 278
  end
  object dtsTicket: TDataSource
    DataSet = dtmEstacionamento.qryTicket
    Left = 356
    Top = 278
  end
  object dtsCondutorLK: TDataSource
    DataSet = qryCondutorLK
    Left = 138
    Top = 279
  end
  object qryCondutorLK: TFDQuery
    Active = True
    Connection = dtmEstacionamento.cnxBaseestacionamento
    SQL.Strings = (
      'SELECT '
      '    CON_COD,'
      '    CON_NOM '
      'FROM CONDUTOR'
      'ORDER BY CON_NOM;')
    Left = 139
    Top = 335
  end
  object dtsVeiculoLK: TDataSource
    DataSet = qryVeiculoLK
    Left = 215
    Top = 278
  end
  object qryVeiculoLK: TFDQuery
    Active = True
    Connection = dtmEstacionamento.cnxBaseestacionamento
    SQL.Strings = (
      'SELECT VEI_COD,'
      '       VEI_PLA'
      'FROM VEICULO'
      'ORDER BY VEI_PLA;')
    Left = 216
    Top = 334
  end
  object ppmCondutor: TPopupMenu
    Left = 53
    Top = 282
    object AtualizarCondutor1: TMenuItem
      Caption = 'Atualizar Condutor'
      OnClick = EvAtualizarCondutor
    end
  end
  object ppmVeiculo: TPopupMenu
    Left = 54
    Top = 332
    object AtualizaVeculo1: TMenuItem
      Caption = 'Atualiza Ve'#237'culo'
      OnClick = EvAtualizarVeiculo
    end
  end
end
