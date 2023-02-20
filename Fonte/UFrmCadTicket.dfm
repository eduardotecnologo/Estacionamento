inherited FrmCadTicket: TFrmCadTicket
  Caption = 'Cadastro de Ticket'
  ClientHeight = 324
  ClientWidth = 711
  ExplicitWidth = 717
  ExplicitHeight = 353
  PixelsPerInch = 96
  TextHeight = 19
  inherited tlbCadastroCRUD: TToolBar
    Top = 259
    Width = 711
    ButtonWidth = 105
    ExplicitTop = 259
    ExplicitWidth = 711
    inherited btnNovo: TToolButton
      ExplicitWidth = 105
    end
    inherited ToolButton5: TToolButton
      Left = 105
      ExplicitLeft = 105
    end
    inherited btnPesquisar: TToolButton
      Left = 120
      ExplicitLeft = 120
      ExplicitWidth = 105
    end
    inherited ToolButton4: TToolButton
      Left = 225
      ExplicitLeft = 225
    end
    inherited btnUpdate: TToolButton
      Left = 240
      ExplicitLeft = 240
      ExplicitWidth = 105
    end
    inherited btnExcluir: TToolButton
      Left = 345
      ExplicitLeft = 345
      ExplicitWidth = 105
    end
    inherited ToolButton1: TToolButton
      Left = 450
      ExplicitLeft = 450
    end
    inherited ToolButton2: TToolButton
      Left = 465
      ExplicitLeft = 465
    end
    inherited bntCancelar: TToolButton
      Left = 480
      ExplicitLeft = 480
      ExplicitWidth = 105
    end
    inherited btnSair: TToolButton [9]
      Left = 585
      ExplicitLeft = 585
      ExplicitWidth = 105
    end
    inherited ToolButton3: TToolButton [10]
      Left = 690
      ExplicitLeft = 690
    end
  end
  object grbConducao: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 695
    Height = 97
    Caption = '[Condu'#231#227'o]'
    TabOrder = 1
  end
  object grbTicket: TGroupBox [2]
    Left = 8
    Top = 111
    Width = 695
    Height = 147
    Caption = '[Ticket]'
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 21
      Width = 691
      Height = 124
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
  inherited ImgAtiva: TImageList
    Left = 392
    Top = 20
  end
  inherited ImgHot: TImageList
    Left = 448
    Top = 20
  end
  inherited DataSourceMain: TDataSource
    DataSet = dtmEstacionamento.qryConducao
    Left = 533
    Top = 19
  end
  inherited ActionListCRUD: TActionList
    Left = 659
    Top = 19
  end
  object dtsTicket: TDataSource
    DataSet = dtmEstacionamento.qryTicket
    Left = 597
    Top = 19
  end
end
