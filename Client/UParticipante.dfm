object FParticipante: TFParticipante
  Left = 34
  Top = 49
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de Participantes'
  ClientHeight = 628
  ClientWidth = 950
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 320
    Width = 950
    Height = 24
    DataSource = DsCad
    Align = alBottom
    Flat = True
    Ctl3D = True
    Kind = dbnHorizontal
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    BeforeAction = DBNavigator1BeforeAction
    OnClick = DBNavigator1Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 344
    Width = 950
    Height = 284
    Align = alBottom
    Color = clBtnHighlight
    TabOrder = 1
    object Label2: TLabel
      Left = 88
      Top = 12
      Width = 42
      Height = 16
      Caption = 'Nome'
      FocusControl = txtNome
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 640
      Top = 58
      Width = 96
      Height = 16
      Caption = 'Complemento'
      FocusControl = txtcomplemento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 18
      Top = 57
      Width = 68
      Height = 16
      Caption = 'Endere'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 324
      Top = 57
      Width = 43
      Height = 16
      Caption = 'Bairro'
      FocusControl = txtBairro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 18
      Top = 100
      Width = 48
      Height = 16
      Caption = 'Fone 1'
      FocusControl = txtfone1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 154
      Top = 100
      Width = 48
      Height = 16
      Caption = 'Fone 2'
      FocusControl = txtfone2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 289
      Top = 100
      Width = 48
      Height = 16
      Caption = 'Fone 3'
      FocusControl = txtfone3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 423
      Top = 100
      Width = 48
      Height = 16
      Caption = 'Fone 4'
      FocusControl = txtFone4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 640
      Top = 12
      Width = 51
      Height = 16
      Caption = 'Cidade'
      FocusControl = txtCodCidade
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 640
      Top = 100
      Width = 85
      Height = 16
      Caption = 'Localiza'#231#227'o'
      FocusControl = txtLocalizacao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 1
      Top = 196
      Width = 948
      Height = 16
      Align = alBottom
      Caption = 'Obs'
      FocusControl = txtFone4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 29
    end
    object Label1: TLabel
      Left = 18
      Top = 12
      Width = 55
      Height = 16
      Caption = 'N'#250'mero'
      FocusControl = txtCod
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtNome: TDBEdit
      Left = 88
      Top = 30
      Width = 541
      Height = 21
      DataField = 'PARNOME'
      DataSource = DsCad
      TabOrder = 0
      OnKeyDown = txtPesquisaKeyDown
    end
    object txtcomplemento: TDBEdit
      Left = 640
      Top = 74
      Width = 297
      Height = 21
      DataField = 'PARCOMPLEMENTO'
      DataSource = DsCad
      TabOrder = 5
      OnKeyDown = txtPesquisaKeyDown
    end
    object txtBairro: TDBEdit
      Left = 324
      Top = 73
      Width = 305
      Height = 21
      DataField = 'PARBAIRRO'
      DataSource = DsCad
      TabOrder = 4
      OnKeyDown = txtPesquisaKeyDown
    end
    object txtfone1: TDBEdit
      Left = 18
      Top = 116
      Width = 130
      Height = 21
      DataField = 'PARFONE1'
      DataSource = DsCad
      MaxLength = 13
      TabOrder = 6
      OnKeyDown = txtPesquisaKeyDown
    end
    object txtfone2: TDBEdit
      Left = 154
      Top = 116
      Width = 130
      Height = 21
      DataField = 'PARFONE2'
      DataSource = DsCad
      MaxLength = 13
      TabOrder = 7
      OnKeyDown = txtPesquisaKeyDown
    end
    object txtfone3: TDBEdit
      Left = 289
      Top = 116
      Width = 130
      Height = 21
      DataField = 'PARFONE3'
      DataSource = DsCad
      MaxLength = 13
      TabOrder = 8
      OnKeyDown = txtPesquisaKeyDown
    end
    object txtFone4: TDBEdit
      Left = 423
      Top = 116
      Width = 130
      Height = 21
      DataField = 'PARFONE4'
      DataSource = DsCad
      MaxLength = 13
      TabOrder = 9
      OnKeyDown = txtPesquisaKeyDown
    end
    object txtCodCidade: TDBEdit
      Left = 640
      Top = 28
      Width = 41
      Height = 21
      DataField = 'PARCIDADE'
      DataSource = DsCad
      TabOrder = 1
      OnKeyDown = txtPesquisaKeyDown
    end
    object txtLocalizacao: TDBEdit
      Left = 640
      Top = 116
      Width = 297
      Height = 21
      DataField = 'PARLOCALIZACAO'
      DataSource = DsCad
      TabOrder = 10
      OnKeyDown = txtPesquisaKeyDown
    end
    object txtObs: TDBRichEdit
      Left = 1
      Top = 212
      Width = 948
      Height = 71
      Align = alBottom
      DataField = 'PAROBS'
      DataSource = DsCad
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnKeyDown = txtPesquisaKeyDown
    end
    object txtCidade: TDBLookupComboBox
      Left = 685
      Top = 28
      Width = 252
      Height = 21
      DataField = 'PARCIDADE'
      DataSource = DsCad
      KeyField = 'CIDCODIGO'
      ListField = 'CIDNOME'
      ListSource = Dm.DSCidade
      TabOrder = 2
    end
    object txtEndereco: TDBEdit
      Left = 18
      Top = 73
      Width = 300
      Height = 21
      DataField = 'PARENDERECO'
      DataSource = DsCad
      TabOrder = 3
      OnKeyDown = txtPesquisaKeyDown
    end
    object txtCod: TDBEdit
      Left = 18
      Top = 28
      Width = 64
      Height = 21
      DataField = 'PARCOD'
      DataSource = DsCad
      TabOrder = 12
      OnKeyDown = txtPesquisaKeyDown
    end
    object PanRastro: TPanel
      Left = 18
      Top = 149
      Width = 920
      Height = 41
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 13
      Visible = False
      object lblGrupo: TLabel
        Left = 1
        Top = 1
        Width = 38
        Height = 16
        Caption = 'Setor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 249
        Top = 1
        Width = 38
        Height = 16
        Caption = 'Setor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 498
        Top = 1
        Width = 24
        Height = 16
        Caption = 'Cpf'
        FocusControl = txtCpf
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 633
        Top = 1
        Width = 32
        Height = 16
        Caption = 'Cnpj'
        FocusControl = txtCnpj
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 767
        Top = 1
        Width = 75
        Height = 16
        Caption = 'Identidade'
        FocusControl = txtIdentidade
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txtNomeGrupo: TDBLookupComboBox
        Left = 67
        Top = 20
        Width = 180
        Height = 21
        DataField = 'PARGRUPO'
        DataSource = DsCad
        KeyField = 'GRUCODIGO'
        ListField = 'GRUNOM'
        ListSource = Dm.DSGrupo
        TabOrder = 1
      end
      object txtNomeGrupo1: TDBLookupComboBox
        Left = 316
        Top = 20
        Width = 180
        Height = 21
        DataField = 'PARGRUPO1'
        DataSource = DsCad
        KeyField = 'GRUCODIGO'
        ListField = 'GRUNOM'
        ListSource = Dm.DSGrupo
        TabOrder = 3
      end
      object txtCpf: TDBEdit
        Left = 498
        Top = 20
        Width = 130
        Height = 21
        DataField = 'PARCPF'
        DataSource = DsCad
        MaxLength = 13
        TabOrder = 4
        OnKeyDown = txtPesquisaKeyDown
      end
      object txtCnpj: TDBEdit
        Left = 633
        Top = 20
        Width = 130
        Height = 21
        DataField = 'PARCNPJ'
        DataSource = DsCad
        MaxLength = 13
        TabOrder = 5
        OnKeyDown = txtPesquisaKeyDown
      end
      object txtIdentidade: TDBEdit
        Left = 767
        Top = 20
        Width = 152
        Height = 21
        DataField = 'PARIDENTIDADE'
        DataSource = DsCad
        MaxLength = 13
        TabOrder = 6
        OnKeyDown = txtPesquisaKeyDown
      end
      object txtCodGrupo: TDBEdit
        Left = 0
        Top = 20
        Width = 64
        Height = 21
        DataField = 'PARGRUPO'
        DataSource = DsCad
        MaxLength = 13
        TabOrder = 0
        OnKeyDown = txtPesquisaKeyDown
      end
      object txtCodGrupo1: TDBEdit
        Left = 249
        Top = 20
        Width = 64
        Height = 21
        DataField = 'PARGRUPO1'
        DataSource = DsCad
        MaxLength = 13
        TabOrder = 2
        OnKeyDown = txtPesquisaKeyDown
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 950
    Height = 41
    Align = alTop
    Color = clBtnHighlight
    TabOrder = 0
    DesignSize = (
      950
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
      Top = 11
      Width = 778
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      OnChange = txtPesquisaChange
      OnKeyDown = txtPesquisaKeyDown
    end
    object ToolBarMenu: TToolBar
      Left = 870
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 950
    Height = 279
    Align = alClient
    Color = clSkyBlue
    DataSource = DsCad
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PARCOD'
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'm.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARNOME'
        Title.Caption = 'Nome'
        Width = 223
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PARCIDADE'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd Cid.'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CIDNOME'
        Title.Caption = 'Cidade'
        Width = 288
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARENDERECO'
        Title.Caption = 'Endere'#231'o'
        Width = 252
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARBAIRRO'
        Title.Caption = 'Bairro'
        Width = 174
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARCOMPLEMENTO'
        Title.Caption = 'Complemento'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARFONE1'
        Title.Caption = 'Fone 1'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARFONE2'
        Title.Caption = 'Fone 2'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARFONE3'
        Title.Caption = 'Fone 3'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARFONE4'
        Title.Caption = 'Fone 4'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARLOCALIZACAO'
        Title.Caption = 'Localiza'#231#227'o'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARCPF'
        Title.Caption = 'Cpf'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARCNPJ'
        Title.Caption = 'Cnpj'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARIDENTIDADE'
        Title.Caption = 'Identidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAROBS'
        Title.Caption = 'Obs.'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PARGRUPO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd Set.'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PARGRUPO1'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Set1.'
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PARFOTO'
        Title.Alignment = taCenter
        Title.Caption = 'Foto'
        Visible = False
      end>
  end
  object DsCad: TDataSource
    DataSet = Dm.CDSParticipante
    OnStateChange = DsCadStateChange
    Left = 40
    Top = 112
  end
end
