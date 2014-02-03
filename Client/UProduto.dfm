object FProduto: TFProduto
  Left = 33
  Top = 32
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de Produtos'
  ClientHeight = 655
  ClientWidth = 1034
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 1034
    Height = 385
    Align = alClient
    Color = clSkyBlue
    DataSource = DSCad
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
        Alignment = taCenter
        Expanded = False
        FieldName = 'PROCODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRONOME'
        Title.Caption = 'Nome'
        Width = 201
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PROREFERENCIA'
        Title.Caption = 'Localiza'#231#227'o'
        Width = 199
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PROPRECO'
        Title.Alignment = taRightJustify
        Title.Caption = 'Pre'#231'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARNOME'
        Title.Caption = 'Propriet'#225'rio'
        Width = 328
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PROCONTATO'
        Title.Caption = 'Contato'
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PROQUANTIDADE'
        Title.Alignment = taRightJustify
        Title.Caption = 'Quantidade'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PROTAMANHO'
        Title.Alignment = taRightJustify
        Title.Caption = 'Tamanho'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PROPESO'
        Title.Alignment = taRightJustify
        Title.Caption = 'Peso'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PROCOMPLEMENTO'
        Title.Caption = 'Complemento'
        Width = 307
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PROOBS'
        Title.Alignment = taCenter
        Title.Caption = 'Obs'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PROFOTO'
        Title.Alignment = taCenter
        Title.Caption = 'Foto'
        Visible = False
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 426
    Width = 1034
    Height = 229
    Align = alBottom
    Color = clBtnHighlight
    TabOrder = 2
    object PgProdutos: TPageControl
      Left = 1
      Top = 25
      Width = 583
      Height = 203
      ActivePage = TabCadastro
      Align = alClient
      TabOrder = 0
      object TabCadastro: TTabSheet
        Caption = 'Cadastro'
        object Label2: TLabel
          Left = 7
          Top = 7
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
        object Label5: TLabel
          Left = 7
          Top = 52
          Width = 85
          Height = 16
          Caption = 'Localiza'#231#227'o'
          FocusControl = txtReferencia
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 429
          Top = 52
          Width = 42
          Height = 16
          Caption = 'Pre'#231'o'
          FocusControl = txtPreco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 7
          Top = 92
          Width = 83
          Height = 16
          Caption = 'Propriet'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 7
          Top = 135
          Width = 58
          Height = 16
          Caption = 'Contato:'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object txtNome: TDBEdit
          Left = 7
          Top = 25
          Width = 565
          Height = 21
          DataField = 'PRONOME'
          DataSource = DSCad
          TabOrder = 0
          OnKeyDown = txtPesquisaKeyDown
        end
        object txtReferencia: TDBEdit
          Left = 7
          Top = 68
          Width = 417
          Height = 21
          DataField = 'PROREFERENCIA'
          DataSource = DSCad
          TabOrder = 1
          OnKeyDown = txtPesquisaKeyDown
        end
        object txtPreco: TDBEdit
          Left = 429
          Top = 68
          Width = 143
          Height = 21
          DataField = 'PROPRECO'
          DataSource = DSCad
          TabOrder = 2
          OnKeyDown = txtPesquisaKeyDown
        end
        object DBEdit2: TDBEdit
          Left = 7
          Top = 151
          Width = 565
          Height = 21
          DataField = 'PROCONTATO'
          DataSource = DSCad
          TabOrder = 5
          OnKeyDown = txtPesquisaKeyDown
        end
        object txtCodParticipante: TDBEdit
          Left = 7
          Top = 108
          Width = 73
          Height = 21
          DataField = 'PROPROPRIETARIO'
          DataSource = DSCad
          TabOrder = 3
          OnKeyDown = txtPesquisaKeyDown
        end
        object txtParticipante: TDBLookupComboBox
          Left = 83
          Top = 108
          Width = 489
          Height = 21
          DataField = 'PROPROPRIETARIO'
          DataSource = DSCad
          KeyField = 'PARCOD'
          ListField = 'PARNOME'
          ListSource = Dm.DSParticpante
          TabOrder = 4
        end
      end
      object TabAvancado: TTabSheet
        Caption = 'Avan'#231'ado'
        ImageIndex = 2
        object PageControl1: TPageControl
          Left = 0
          Top = 0
          Width = 575
          Height = 175
          ActivePage = TabCadAvancado
          Align = alClient
          TabOrder = 0
          object TabCadAvancado: TTabSheet
            Caption = 'Cadastro'
            object Label13: TLabel
              Left = 0
              Top = 42
              Width = 567
              Height = 16
              Align = alBottom
              Caption = 'Obs'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 29
            end
            object Label6: TLabel
              Left = 440
              Top = 3
              Width = 37
              Height = 16
              Caption = 'Peso'
              FocusControl = txtPeso
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 325
              Top = 3
              Width = 81
              Height = 16
              Caption = 'Quantidade'
              FocusControl = txtQuantidade
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 194
              Top = 3
              Width = 66
              Height = 16
              Caption = 'Tamanho'
              FocusControl = txtTamanho
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label9: TLabel
              Left = 2
              Top = 3
              Width = 96
              Height = 16
              Caption = 'Complemento'
              FocusControl = txtComplemento
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object txtObs: TDBRichEdit
              Left = 0
              Top = 58
              Width = 567
              Height = 89
              Align = alBottom
              DataField = 'PROOBS'
              DataSource = DSCad
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnKeyDown = txtPesquisaKeyDown
            end
            object txtPeso: TDBEdit
              Left = 440
              Top = 19
              Width = 123
              Height = 21
              DataField = 'PROPESO'
              DataSource = DSCad
              TabOrder = 3
              OnKeyDown = txtPesquisaKeyDown
            end
            object txtQuantidade: TDBEdit
              Left = 323
              Top = 19
              Width = 111
              Height = 21
              DataField = 'PROQUANTIDADE'
              DataSource = DSCad
              TabOrder = 2
              OnKeyDown = txtPesquisaKeyDown
            end
            object txtTamanho: TDBEdit
              Left = 194
              Top = 19
              Width = 125
              Height = 21
              DataField = 'PROTAMANHO'
              DataSource = DSCad
              TabOrder = 1
              OnKeyDown = txtPesquisaKeyDown
            end
            object txtComplemento: TDBEdit
              Left = 1
              Top = 19
              Width = 187
              Height = 21
              DataField = 'PROCOMPLEMENTO'
              DataSource = DSCad
              TabOrder = 0
              OnKeyDown = txtPesquisaKeyDown
            end
          end
          object TabVinculacaoAvanc: TTabSheet
            Caption = 'Vincula'#231#227'o'
            ImageIndex = 1
            object Gridvinculacao: TDBGrid
              Left = 0
              Top = 0
              Width = 567
              Height = 147
              Align = alClient
              Color = clSkyBlue
              DataSource = DsVinculo
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'ASSPARTICIPANTE'
                  Title.Caption = 'Participante'
                  Width = 102
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NomeParticipante'
                  Title.Caption = '    '
                  Width = 91
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ASSOBS'
                  Title.Caption = 'Observa'#231'oes'
                  Width = 335
                  Visible = True
                end>
            end
          end
        end
      end
    end
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 1032
      Height = 24
      DataSource = DSCad
      Align = alTop
      Flat = True
      Kind = dbnHorizontal
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      BeforeAction = DBNavigator1BeforeAction
      OnClick = DBNavigator1Click
    end
    object DBImage1: TDBImage
      Left = 584
      Top = 25
      Width = 449
      Height = 203
      Align = alRight
      DataField = 'PROFOTO'
      DataSource = DSCad
      TabOrder = 2
      OnClick = DBImage1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1034
    Height = 41
    Align = alTop
    Color = clBtnHighlight
    TabOrder = 1
    DesignSize = (
      1034
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
      Width = 861
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      OnChange = txtPesquisaChange
      OnKeyDown = txtPesquisaKeyDown
    end
    object ToolBarMenu: TToolBar
      Left = 954
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
  object DsVinculo: TDataSource
    DataSet = Dm.CDSAssociacao
    Left = 768
    Top = 216
  end
  object OpenPictureDialog1: TOpenPictureDialog
    DefaultExt = '*.jpg'
    Filter = 'JPEG Image File (*.jpg)|*.jpg'
    Left = 848
    Top = 216
  end
  object DSCad: TDataSource
    DataSet = Dm.CDSProduto
    OnStateChange = DSCadStateChange
    Left = 720
    Top = 216
  end
end
