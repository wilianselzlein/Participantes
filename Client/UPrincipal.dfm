object FPrincipal: TFPrincipal
  Left = 189
  Top = 105
  Caption = 'Aplica'#231#227'o Cliente - Participantes'
  ClientHeight = 617
  ClientWidth = 1020
  Color = clHighlightText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object PanMenu: TPanel
    Left = 0
    Top = 0
    Width = 1020
    Height = 617
    Align = alClient
    TabOrder = 0
    Visible = False
    object Splitter1: TSplitter
      Left = 1
      Top = 586
      Width = 1018
      Height = 3
      Cursor = crVSplit
      Align = alBottom
      ExplicitTop = 451
    end
    object PanTar: TPanel
      Left = 1
      Top = 1
      Width = 1018
      Height = 585
      Align = alClient
      Color = clSkyBlue
      ParentBackground = False
      TabOrder = 0
      object Splitter3: TSplitter
        Left = 599
        Top = 71
        Width = 8
        Height = 513
        Align = alRight
        Visible = False
        ExplicitLeft = 488
        ExplicitTop = 1
        ExplicitHeight = 231
      end
      object Splitter4: TSplitter
        Left = 291
        Top = 71
        Width = 8
        Height = 513
        Align = alRight
        ExplicitLeft = 346
        ExplicitTop = -1
        ExplicitHeight = 583
      end
      object Panel1: TPanel
        Left = 607
        Top = 71
        Width = 410
        Height = 513
        Align = alRight
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object Label3: TLabel
          Left = 0
          Top = 0
          Width = 410
          Height = 24
          Align = alTop
          Alignment = taCenter
          Caption = 'Tarefas Entregues'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 172
        end
        object DBGridEntregues: TDBGrid
          Left = 0
          Top = 24
          Width = 410
          Height = 489
          Cursor = crHandPoint
          Align = alClient
          DataSource = Dm.DSEntregues
          FixedColor = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = DbGridAEntregarDrawColumnCell
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'TARNUMERO'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TARNOME'
              Title.Caption = 'T'#237'tulo'
              Width = 291
              Visible = True
            end>
        end
      end
      object Panel2: TPanel
        Left = 1
        Top = 71
        Width = 290
        Height = 513
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 1
        object Label2: TLabel
          Left = 0
          Top = 0
          Width = 290
          Height = 24
          Align = alTop
          Alignment = taCenter
          Caption = 'Tarefas a Entregar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 173
        end
        object DbGridAEntregar: TDBGrid
          Left = 0
          Top = 24
          Width = 290
          Height = 489
          Cursor = crHandPoint
          Align = alClient
          DataSource = DSAEntregar
          FixedColor = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnCellClick = DbGridAEntregarCellClick
          OnColExit = DbGridAEntregarColExit
          OnDrawColumnCell = DbGridAEntregarDrawColumnCell
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'TARNUMERO'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TARNOME'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsUnderline]
              Title.Caption = 'T'#237'tulo'
              Width = 118
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TARDATAHORAENTREGA'
              Title.Caption = 'Hora'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TARPONTOS1'
              Title.Alignment = taRightJustify
              Title.Caption = 'Pontos'
              Visible = True
            end>
        end
      end
      object PanArq: TPanel
        Left = 299
        Top = 71
        Width = 300
        Height = 513
        Align = alRight
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 2
        Visible = False
        object Label1: TLabel
          Left = 0
          Top = 0
          Width = 300
          Height = 24
          Align = alTop
          Alignment = taCenter
          Caption = 'Fila de Impress'#227'o - Invis'#237'vel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 260
        end
        object DBGrid1: TDBGrid
          Left = 0
          Top = 24
          Width = 300
          Height = 489
          Cursor = crHandPoint
          Align = alClient
          DataSource = Dm.DSArqs
          FixedColor = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnCellClick = DBGrid1CellClick
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'TARCODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TARNOME'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsUnderline]
              Title.Caption = 'T'#237'tulo'
              Width = 692
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TARDATAHORAENTREGA'
              Title.Caption = 'Hora'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TARDATAHORAENTREGUE'
              Title.Caption = 'Entrega'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TARPONTOS'
              Title.Alignment = taRightJustify
              Title.Caption = 'Pontos'
              Visible = True
            end>
        end
      end
      object ToolBarMenu: TToolBar
        Left = 1
        Top = 1
        Width = 1016
        Height = 70
        AutoSize = True
        ButtonHeight = 70
        ButtonWidth = 71
        Caption = 'ToolBarMenu'
        DrawingStyle = dsGradient
        GradientEndColor = clSkyBlue
        Images = Dm.ImageList2
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Transparent = True
        object btnCidade: TToolButton
          Left = 0
          Top = 0
          Hint = 'Cidades'
          ImageIndex = 4
          OnClick = miCidadeClick
        end
        object btnParticipante: TToolButton
          Left = 71
          Top = 0
          Hint = 'Participantes'
          ImageIndex = 0
          OnClick = miParticipanteClick
        end
        object btnGrupo: TToolButton
          Left = 142
          Top = 0
          Hint = 'Setor'
          ImageIndex = 1
          OnClick = miGrupoClick
        end
        object btnProduto: TToolButton
          Left = 213
          Top = 0
          Hint = 'Produtos'
          ImageIndex = 2
          OnClick = miProdutoClick
        end
        object btnTarefa: TToolButton
          Left = 284
          Top = 0
          Hint = 'Tarefas'
          ImageIndex = 3
          OnClick = miTarefaClick
        end
        object ToolButton9: TToolButton
          Left = 355
          Top = 0
          Width = 8
          ImageIndex = 7
          Style = tbsSeparator
        end
        object btnFace: TToolButton
          Left = 363
          Top = 0
          Hint = 'Facebook'
          ImageIndex = 5
          OnClick = miFacebookClick
        end
        object ToolButton8: TToolButton
          Left = 434
          Top = 0
          Width = 8
          ImageIndex = 7
          Style = tbsSeparator
        end
        object btnSair: TToolButton
          Left = 442
          Top = 0
          Hint = 'Sair'
          ImageIndex = 6
          OnClick = miSairClick
        end
      end
    end
    object PanGraf: TPanel
      Left = 1
      Top = 589
      Width = 1018
      Height = 27
      Align = alBottom
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
    end
  end
  object MainMenu: TMainMenu
    Images = Dm.ImageList2
    Left = 144
    Top = 184
    object miCadastros: TMenuItem
      Caption = '&Cadastros'
      object miParticipante: TMenuItem
        Caption = '&Participante'
        ImageIndex = 0
        OnClick = miParticipanteClick
      end
      object miGrupo: TMenuItem
        Caption = '&Setor'
        ImageIndex = 1
        Visible = False
        OnClick = miGrupoClick
      end
      object miProduto: TMenuItem
        Caption = 'P&roduto'
        ImageIndex = 2
        OnClick = miProdutoClick
      end
      object miTarefa: TMenuItem
        Caption = 'Tarefas'
        ImageIndex = 3
        Visible = False
        OnClick = miTarefaClick
      end
      object miCidade: TMenuItem
        Caption = '&Cidade'
        ImageIndex = 4
        OnClick = miCidadeClick
      end
    end
    object miFacebook: TMenuItem
      Caption = '&Facebook'
      Visible = False
      OnClick = miFacebookClick
    end
    object miSair: TMenuItem
      Caption = '&Sair'
      OnClick = miSairClick
    end
  end
  object Timer1: TTimer
    Interval = 2000
    OnTimer = Timer1Timer
    Left = 104
    Top = 184
  end
  object DSAEntregar: TDataSource
    DataSet = Dm.CDSAEntregar
    Left = 64
    Top = 184
  end
end
