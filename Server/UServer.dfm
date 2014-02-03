object FServer: TFServer
  Left = 0
  Top = 0
  Caption = 'Aplica'#231#227'o Servidora'
  ClientHeight = 387
  ClientWidth = 667
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblCabecalho: TLabel
    Left = 0
    Top = 0
    Width = 667
    Height = 24
    Align = alTop
    Alignment = taCenter
    BiDiMode = bdLeftToRight
    Caption = 'Servidor de Aplica'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    ExplicitWidth = 207
  end
  object lblConexao1: TLabel
    Left = 0
    Top = 24
    Width = 667
    Height = 13
    Align = alTop
    Caption = 'N'#176' de Conex'#245'es:'
    ExplicitWidth = 82
  end
  object lblData1: TLabel
    Left = 0
    Top = 61
    Width = 667
    Height = 13
    Align = alTop
    Caption = 'Data: '
    ExplicitWidth = 30
  end
  object lblHora1: TLabel
    Left = 0
    Top = 98
    Width = 667
    Height = 13
    Align = alTop
    Caption = 'Hora: '
    ExplicitWidth = 30
  end
  object lblData2: TLabel
    Left = 0
    Top = 74
    Width = 667
    Height = 24
    Align = alTop
    Caption = '00/00/0000'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 101
  end
  object lblHora2: TLabel
    Left = 0
    Top = 111
    Width = 667
    Height = 24
    Align = alTop
    Caption = '00:00:00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 79
  end
  object lblConexao2: TLabel
    Left = 0
    Top = 37
    Width = 667
    Height = 24
    Align = alTop
    Caption = '000'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 34
  end
  object btnDerrubar: TSpeedButton
    Left = 370
    Top = 38
    Width = 265
    Height = 30
    Caption = '&Derrubar Servidor'
    Flat = True
    Glyph.Data = {
      9A010000424D9A010000000000009A0000002800000010000000100000000100
      08000000000000010000000000000000000019000000190000003040C400CBCB
      CB002D49E500324DE7003751EA003C55EC004159EE00465DF0004B61F3009EAB
      F4004F65F5008F9DF50097A3F500A7B3F500B0BBF5008291F6008896F600BAC3
      F6005469F7007B8CF7007687F800596EF9007182FA006C7EFC00FEFEFE001818
      1818181818181818181818181818181818010118181818181801011818181818
      0100000118181818010000011818180100171700011818010017170001181800
      1615151600010100161515160018180014121212140000141212121400181818
      00130A0A0A13130A0A0A13001818181818000F0808080808080F001818181818
      181800100707070710001818181818181801000B060606060B00011818181818
      01000C0505050505050C00011818180100090404040909040404090001181800
      0D0303030D00000D0303030D001818000E02020E001818000E02020E00181818
      001111001818181800111100181818181800001818181818180000181818}
    OnClick = btnDerrubarClick
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 135
    Width = 667
    Height = 252
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    TabStop = False
    object TabLog: TTabSheet
      Caption = '&Log'
      object MemoErros: TMemo
        Left = 0
        Top = 0
        Width = 659
        Height = 224
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 0
        WantReturns = False
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Atualiza'#231#245'es'
      ImageIndex = 1
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 659
        Height = 224
        Align = alClient
        Lines.Strings = (
          'Mar'#231'o/13'
          '* Corre'#231#227'o no campo % de pontos executados na tela principal;'
          '* Bloqueado campo edi'#231#227'o;'
          '* Tirado campo previs'#227'o do cadastro de tarefas;'
          '* Corrigido os dois campos de hora e hora de entrega;'
          
            '* Adicionado o campo n'#250'mero da tarefa, sem alterar o c'#243'digo exis' +
            'tente;'
          '* O campo c'#243'digo da tarefa foi deixado sem edi'#231#227'o;'
          
            '* Deixado apenas dois campos: M'#225'ximo de Pontos e Pontos Executad' +
            'os;'
          
            '* Refeito o c'#225'lculo do rendimento: pontos conquistados sobre os ' +
            'pontos totais;'
          '* Modificado a nomenclatura de Grupo para Setor;'
          '* Melhorias na sele'#231#227'o do arquivo para a tarefa;'
          '* Melhor nas Cores nos filtros das Tarefas;'
          '* Adicionado bot'#227'o para Baixar a tarefa;'
          
            '* Melhoria nos testes dos filtros das tarefas (pendentes, conclu' +
            #237'das e perdidas);'
          
            '* Criado cadastro avan'#231'ado e b'#225'sico de produtos - esse com as in' +
            'forma'#231#245'es: Nome, Propriet'#225'rio, Contato, Localiza'#231#227'o, Foto e Pre'#231 +
            'o'
          'Abril/13'
          '* Criado campo data/hora de entrega e entregue'
          '')
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
      end
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 488
    Top = 248
  end
end
