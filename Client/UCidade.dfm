object FCidade: TFCidade
  Left = 667
  Top = 310
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de Cidades'
  ClientHeight = 334
  ClientWidth = 512
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 512
    Height = 141
    Align = alClient
    Color = clSkyBlue
    DataSource = DSCad
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CIDCODIGO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDNOME'
        Title.Caption = 'Cidade'
        Width = 348
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDESTADO'
        Title.Caption = 'Estado'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 182
    Width = 512
    Height = 25
    DataSource = DSCad
    Align = alBottom
    Flat = True
    Kind = dbnHorizontal
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    BeforeAction = DBNavigator1BeforeAction
    OnClick = DBNavigator1Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 207
    Width = 512
    Height = 127
    Align = alBottom
    Color = clBtnHighlight
    TabOrder = 2
    object Label1: TLabel
      Left = 22
      Top = 13
      Width = 51
      Height = 16
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 22
      Top = 47
      Width = 51
      Height = 16
      Caption = 'Cidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 22
      Top = 81
      Width = 50
      Height = 16
      Caption = 'Estado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtCodigo: TDBEdit
      Left = 86
      Top = 11
      Width = 121
      Height = 21
      DataField = 'CIDCODIGO'
      DataSource = DSCad
      Enabled = False
      TabOrder = 0
      OnKeyDown = txtPesquisaKeyDown
    end
    object txtCidade: TDBEdit
      Left = 86
      Top = 44
      Width = 281
      Height = 21
      DataField = 'CIDNOME'
      DataSource = DSCad
      TabOrder = 1
      OnKeyDown = txtPesquisaKeyDown
    end
    object txtEstado: TDBEdit
      Left = 86
      Top = 78
      Width = 121
      Height = 21
      DataField = 'CIDESTADO'
      DataSource = DSCad
      TabOrder = 2
      OnKeyDown = txtPesquisaKeyDown
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 512
    Height = 41
    Align = alTop
    Color = clBtnHighlight
    TabOrder = 1
    DesignSize = (
      512
      41)
    object Label4: TLabel
      Left = 16
      Top = 12
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
    object txtPesquisa: TEdit
      Left = 88
      Top = 10
      Width = 343
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      OnChange = txtPesquisaChange
      OnKeyDown = txtPesquisaKeyDown
    end
    object ToolBarMenu: TToolBar
      Left = 432
      Top = 1
      Width = 79
      Height = 39
      Align = alRight
      AutoSize = True
      BorderWidth = 4
      ButtonWidth = 27
      Images = Dm.ImageList1
      List = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Transparent = True
      object btnConsulta: TToolButton
        Left = 0
        Top = 0
        Hint = 'Pesquisa Avan'#231'ada'
        AutoSize = True
        Caption = 'btnConsulta'
        ImageIndex = 10
        ParentShowHint = False
        ShowHint = True
        OnClick = btnConsultaClick
      end
      object ToolButton1: TToolButton
        Left = 27
        Top = 0
        Width = 9
        Caption = 'ToolButton1'
        ImageIndex = 2
        ParentShowHint = False
        ShowHint = True
        Style = tbsSeparator
      end
      object btnDuplicar: TToolButton
        Left = 36
        Top = 0
        Hint = 'Duplicar Registro'
        AutoSize = True
        Caption = '11'
        ImageIndex = 11
        ParentShowHint = False
        ShowHint = True
        OnClick = btnDuplicarClick
      end
    end
  end
  object DSCad: TDataSource
    DataSet = Dm.CDSCidade
    OnStateChange = DSCadStateChange
    Left = 40
    Top = 88
  end
end
