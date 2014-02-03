object FGrupo: TFGrupo
  Left = 667
  Top = 310
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de Setor'
  ClientHeight = 412
  ClientWidth = 543
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
    Width = 543
    Height = 219
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
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'GRUCODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRUNOM'
        Title.Caption = 'Nome'
        Width = 175
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRUCOR'
        Title.Caption = 'Cor'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRUPESO'
        Title.Caption = 'Peso'
        Width = 67
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'GRURESPONSAVEL'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd Resp.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRUNOMERESP'
        Title.Caption = 'Respons'#225'vel'
        Width = 171
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 285
    Width = 543
    Height = 127
    Align = alBottom
    Color = clBtnHighlight
    TabOrder = 2
    object Label2: TLabel
      Left = 106
      Top = 7
      Width = 42
      Height = 16
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 381
      Top = 7
      Width = 25
      Height = 16
      Caption = 'Cor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 18
      Top = 50
      Width = 37
      Height = 16
      Caption = 'Peso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 145
      Top = 50
      Width = 93
      Height = 16
      Caption = 'Respons'#225'vel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 18
      Top = 7
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
    object txtPeso: TDBEdit
      Left = 18
      Top = 67
      Width = 121
      Height = 21
      DataField = 'GRUPESO'
      DataSource = DSCad
      TabOrder = 2
      OnKeyDown = txtPesquisaKeyDown
    end
    object txtNomeResp: TDBLookupComboBox
      Left = 200
      Top = 67
      Width = 314
      Height = 21
      DataField = 'GRURESPONSAVEL'
      DataSource = DSCad
      KeyField = 'PARCOD'
      ListField = 'PARNOME'
      ListSource = Dm.DSParticpante
      TabOrder = 4
    end
    object txtNome: TDBEdit
      Left = 106
      Top = 24
      Width = 271
      Height = 21
      DataField = 'GRUNOM'
      DataSource = DSCad
      TabOrder = 1
      OnKeyDown = txtPesquisaKeyDown
    end
    object txtCodigo: TDBEdit
      Left = 18
      Top = 24
      Width = 82
      Height = 21
      DataField = 'GRUCODIGO'
      DataSource = DSCad
      Enabled = False
      TabOrder = 0
      OnKeyDown = txtPesquisaKeyDown
    end
    object ColorBox1: TColorBox
      Left = 383
      Top = 23
      Width = 131
      Height = 22
      Style = [cbStandardColors]
      TabOrder = 5
      OnChange = ColorBox1Change
    end
    object txtCodResp: TDBEdit
      Left = 146
      Top = 67
      Width = 48
      Height = 21
      DataField = 'GRURESPONSAVEL'
      DataSource = DSCad
      TabOrder = 3
      OnKeyDown = txtPesquisaKeyDown
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 543
    Height = 41
    Align = alTop
    Color = clBtnHighlight
    TabOrder = 1
    DesignSize = (
      543
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
      Width = 364
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      OnChange = txtPesquisaChange
      OnKeyDown = txtPesquisaKeyDown
    end
    object ToolBarMenu: TToolBar
      Left = 463
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
        Caption = 'btnDuplicar'
        ImageIndex = 11
        ParentShowHint = False
        ShowHint = True
        OnClick = btnDuplicarClick
      end
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 260
    Width = 543
    Height = 25
    DataSource = DSCad
    Align = alBottom
    Flat = True
    Ctl3D = True
    Kind = dbnHorizontal
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    BeforeAction = DBNavigator1BeforeAction
    OnClick = DBNavigator1Click
  end
  object DSCad: TDataSource
    DataSet = Dm.CDSGrupo
    OnStateChange = DSCadStateChange
    OnDataChange = DSCadDataChange
    Left = 48
    Top = 144
  end
end
