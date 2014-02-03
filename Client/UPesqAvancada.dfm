object FPesqAvancada: TFPesqAvancada
  Left = 0
  Top = 0
  Caption = 'Pesquisa Avan'#231'ada'
  ClientHeight = 486
  ClientWidth = 719
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPesqAvancada: TPanel
    Left = 0
    Top = 0
    Width = 719
    Height = 35
    Align = alTop
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      719
      35)
    object Label4: TLabel
      Left = 8
      Top = 8
      Width = 66
      Height = 16
      Caption = 'Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtPesqAvancada: TEdit
      Left = 89
      Top = 7
      Width = 489
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      OnKeyPress = txtPesqAvancadaKeyPress
    end
    object chkAjuste: TCheckBox
      Left = 594
      Top = 1
      Width = 124
      Height = 33
      Align = alRight
      Caption = 'Auto ajustar colunas'
      TabOrder = 1
    end
  end
  object DBPesqAvancada: TDBGrid
    Left = 0
    Top = 35
    Width = 719
    Height = 420
    Align = alClient
    Color = clSkyBlue
    DataSource = DSConsulta
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBPesqAvancadaDrawColumnCell
    OnDblClick = DBPesqAvancadaDblClick
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 455
    Width = 719
    Height = 31
    DataSource = DSConsulta
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit]
    Align = alBottom
    Flat = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = DBNavigator1Click
  end
  object DSConsulta: TDataSource
    DataSet = Dm.CDSConsulta
    Left = 120
    Top = 392
  end
end
