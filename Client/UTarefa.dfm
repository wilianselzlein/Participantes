object FTarefa: TFTarefa
  Left = 34
  Top = 49
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de Tarefas'
  ClientHeight = 543
  ClientWidth = 928
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 39
    Width = 928
    Height = 293
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
        FieldName = 'TAREDICAO'
        Title.Alignment = taCenter
        Title.Caption = 'Edi'#231#227'o'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TARDATAHORACADASTRO'
        Title.Alignment = taCenter
        Title.Caption = 'Hora Cadastro'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TARCODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TARNUMERO'
        Title.Caption = 'N'#250'mero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TARNOME'
        Title.Caption = 'T'#237'tulo'
        Width = 363
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TARDATAHORAENTREGA'
        Title.Alignment = taCenter
        Title.Caption = 'Hora Entrega'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TARDATAHORAENTREGUE'
        Title.Alignment = taCenter
        Title.Caption = 'Hora Entregue'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TARPONTOS1'
        Title.Alignment = taCenter
        Title.Caption = 'Pontos Max'
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TARPONTOS'
        Title.Alignment = taCenter
        Title.Caption = 'Pontos'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TARARQUIVO'
        Title.Caption = 'Arquivo'
        Width = 212
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TARDESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 719
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TARGRUPO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Grupo'
        Visible = False
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 332
    Width = 928
    Height = 24
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
    Top = 356
    Width = 928
    Height = 187
    Align = alBottom
    Color = clBtnHighlight
    TabOrder = 2
    object Label2: TLabel
      Left = 366
      Top = 10
      Width = 40
      Height = 16
      Caption = 'T'#237'tulo'
      FocusControl = txtNome
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 86
      Top = 10
      Width = 102
      Height = 16
      Caption = 'Hora Cadastro'
      FocusControl = txtDataHoraCadastro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 18
      Top = 137
      Width = 72
      Height = 16
      Caption = 'Descri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 18
      Top = 10
      Width = 50
      Height = 16
      Caption = 'Edi'#231#227'o'
      FocusControl = txtEdicao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 213
      Top = 131
      Width = 142
      Height = 16
      Caption = 'Participante Entrega'
      FocusControl = txtCodParticipante
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label12: TLabel
      Left = 18
      Top = 92
      Width = 54
      Height = 16
      Caption = 'Arquivo'
      FocusControl = txtArquivo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblGrupo: TLabel
      Left = 582
      Top = 135
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
    object Label1: TLabel
      Left = 233
      Top = 10
      Width = 33
      Height = 16
      Caption = 'C'#243'd.'
      FocusControl = txtCod
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 302
      Top = 51
      Width = 132
      Height = 16
      Caption = 'Pontos Realizados'
      FocusControl = txtPontos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 160
      Top = 51
      Width = 138
      Height = 16
      Caption = 'Data Hora Entregue'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnSelecionar: TSpeedButton
      Left = 785
      Top = 107
      Width = 63
      Height = 22
      Caption = '&Selecionar'
      OnClick = btnSelecionarClick
    end
    object btnAbrir: TSpeedButton
      Left = 850
      Top = 107
      Width = 63
      Height = 22
      Caption = '&Abrir Arq.'
      OnClick = btnAbrirClick
    end
    object Label8: TLabel
      Left = 834
      Top = 9
      Width = 81
      Height = 16
      Caption = 'Pontos Max'
      FocusControl = txtPontos1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 302
      Top = 10
      Width = 55
      Height = 16
      Caption = 'N'#250'mero'
      FocusControl = txtNumero
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnBaixar: TSpeedButton
      Left = 365
      Top = 68
      Width = 106
      Height = 22
      Caption = '&Baixar Tarefa'
      OnClick = btnBaixarClick
    end
    object Label7: TLabel
      Left = 18
      Top = 51
      Width = 130
      Height = 16
      Caption = 'Data Hora Entrega'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtNome: TDBEdit
      Left = 366
      Top = 28
      Width = 464
      Height = 21
      DataField = 'TARNOME'
      DataSource = DSCad
      TabOrder = 4
      OnKeyDown = txtPesquisaKeyDown
    end
    object txtDataHoraCadastro: TDBEdit
      Left = 87
      Top = 28
      Width = 139
      Height = 21
      Color = clSkyBlue
      DataField = 'TARDATAHORACADASTRO'
      DataSource = DSCad
      Enabled = False
      TabOrder = 1
      OnKeyDown = txtPesquisaKeyDown
    end
    object txtEdicao: TDBEdit
      Left = 18
      Top = 28
      Width = 63
      Height = 21
      Color = clSkyBlue
      DataField = 'TAREDICAO'
      DataSource = DSCad
      Enabled = False
      TabOrder = 0
      OnKeyDown = txtPesquisaKeyDown
    end
    object txtCodParticipante: TDBEdit
      Left = 356
      Top = 130
      Width = 41
      Height = 21
      DataField = 'TARPARTICIPANTE'
      DataSource = DSCad
      TabOrder = 10
      Visible = False
      OnKeyDown = txtPesquisaKeyDown
    end
    object txtArquivo: TDBEdit
      Left = 18
      Top = 108
      Width = 763
      Height = 21
      DataField = 'TARARQUIVO'
      DataSource = DSCad
      TabOrder = 9
      OnKeyDown = txtPesquisaKeyDown
    end
    object txtParticipante: TDBLookupComboBox
      Left = 403
      Top = 130
      Width = 174
      Height = 21
      DataField = 'TARPARTICIPANTE'
      DataSource = DSCad
      KeyField = 'PARCOD'
      ListField = 'PARNOME'
      ListSource = Dm.DSParticpante
      TabOrder = 11
      Visible = False
    end
    object txtDescricao: TDBEdit
      Left = 18
      Top = 153
      Width = 560
      Height = 21
      DataField = 'TARDESCRICAO'
      DataSource = DSCad
      TabOrder = 12
      OnKeyDown = txtPesquisaKeyDown
    end
    object txtNomeGrupo: TDBLookupComboBox
      Left = 632
      Top = 153
      Width = 284
      Height = 21
      DataField = 'TARGRUPO'
      DataSource = DSCad
      KeyField = 'GRUCODIGO'
      ListField = 'GRUNOM'
      ListSource = Dm.DSGrupo
      TabOrder = 14
    end
    object txtCod: TDBEdit
      Left = 231
      Top = 28
      Width = 67
      Height = 21
      Color = clSkyBlue
      DataField = 'TARCODIGO'
      DataSource = DSCad
      Enabled = False
      TabOrder = 2
      OnKeyDown = txtPesquisaKeyDown
    end
    object txtPontos: TDBEdit
      Left = 302
      Top = 69
      Width = 60
      Height = 21
      TabStop = False
      DataField = 'TARPONTOS'
      DataSource = DSCad
      TabOrder = 8
      OnKeyDown = txtPesquisaKeyDown
    end
    object txtCodGrupo: TDBEdit
      Left = 582
      Top = 153
      Width = 47
      Height = 21
      DataField = 'TARGRUPO'
      DataSource = DSCad
      TabOrder = 13
      OnKeyDown = txtPesquisaKeyDown
    end
    object txtPontos1: TDBEdit
      Left = 834
      Top = 28
      Width = 80
      Height = 21
      DataField = 'TARPONTOS1'
      DataSource = DSCad
      TabOrder = 5
      OnKeyDown = txtPesquisaKeyDown
    end
    object txtPontos3: TDBEdit
      Left = 160
      Top = 69
      Width = 139
      Height = 21
      TabStop = False
      DataField = 'TARDATAHORAENTREGUE'
      DataSource = DSCad
      TabOrder = 7
      OnKeyDown = txtPesquisaKeyDown
    end
    object txtNumero: TDBEdit
      Left = 302
      Top = 28
      Width = 59
      Height = 21
      DataField = 'TARNUMERO'
      DataSource = DSCad
      TabOrder = 3
      OnKeyDown = txtPesquisaKeyDown
    end
    object txtDataHoraEntrega: TDBEdit
      Left = 17
      Top = 69
      Width = 139
      Height = 21
      DataField = 'TARDATAHORAENTREGA'
      DataSource = DSCad
      TabOrder = 6
      OnKeyDown = txtPesquisaKeyDown
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 928
    Height = 39
    Align = alTop
    Color = clBtnHighlight
    TabOrder = 1
    DesignSize = (
      928
      39)
    object Label4: TLabel
      Left = 8
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
    object Label9: TLabel
      Left = 432
      Top = 12
      Width = 95
      Height = 16
      Caption = 'Total de Tar.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtPesquisa: TEdit
      Left = 80
      Top = 11
      Width = 348
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      OnChange = txtPesquisaChange
      OnKeyDown = txtPesquisaKeyDown
    end
    object ToolBarMenu: TToolBar
      Left = 571
      Top = 1
      Width = 79
      Height = 37
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
    object gbLegenda: TGroupBox
      Left = 650
      Top = 1
      Width = 277
      Height = 37
      Align = alRight
      Caption = 'Legenda'
      TabOrder = 2
      object Shape1: TShape
        Left = 72
        Top = 32
        Width = 54
        Height = -1
        Pen.Color = clRed
      end
      object Shape2: TShape
        Left = 149
        Top = 32
        Width = 52
        Height = -1
        Pen.Color = clGreen
      end
      object Shape3: TShape
        Left = 225
        Top = 32
        Width = 44
        Height = -1
      end
      object rbTodas: TRadioButton
        Left = 3
        Top = 15
        Width = 52
        Height = 15
        Caption = 'Todas'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rbTodasClick
      end
      object RadioButton1: TRadioButton
        Tag = 1
        Left = 56
        Top = 15
        Width = 73
        Height = 15
        Caption = 'Pendentes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = rbTodasClick
      end
      object RadioButton2: TRadioButton
        Tag = 2
        Left = 135
        Top = 15
        Width = 71
        Height = 15
        Caption = 'Entregues'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = rbTodasClick
      end
      object RadioButton3: TRadioButton
        Tag = 3
        Left = 209
        Top = 15
        Width = 63
        Height = 15
        Caption = 'Perdidas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = rbTodasClick
      end
    end
    object DBEdit1: TDBEdit
      Left = 535
      Top = 10
      Width = 40
      Height = 21
      Color = clSkyBlue
      DataField = 'TCOUNT'
      DataSource = DSCad
      Enabled = False
      TabOrder = 3
      OnKeyDown = txtPesquisaKeyDown
    end
  end
  object DSCad: TDataSource
    DataSet = Dm.CDSTarefa
    OnStateChange = DSCadStateChange
    Left = 32
    Top = 168
  end
end
