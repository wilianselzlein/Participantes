unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, Menus, XPMan, StdCtrls, ShellApi,
  Provider, ToolWin, ActnMan, ActnCtrls, Ribbon, RibbonLunaStyleActnCtrls,
  ComCtrls, UGridImagem, DB, Data.SqlExpr;

type
  TTipoSistema = (tpGerenciador, tpImpressao);

  TFPrincipal = class(TForm)
    MainMenu: TMainMenu;
    miCadastros: TMenuItem;
    miParticipante: TMenuItem;
    miProduto: TMenuItem;
    miCidade: TMenuItem;
    miGrupo: TMenuItem;
    miTarefa: TMenuItem;
    PanMenu: TPanel;
    PanTar: TPanel;
    Splitter1: TSplitter;
    PanGraf: TPanel;
    Timer1: TTimer;
    Panel1: TPanel;
    Panel2: TPanel;
    Splitter3: TSplitter;
    DbGridAEntregar: TDBGrid;
    Label2: TLabel;
    DBGridEntregues: TDBGrid;
    Label3: TLabel;
    Splitter4: TSplitter;
    PanArq: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    miSair: TMenuItem;
    miFacebook: TMenuItem;
    ToolBarMenu: TToolBar;
    btnParticipante: TToolButton;
    btnGrupo: TToolButton;
    btnProduto: TToolButton;
    btnTarefa: TToolButton;
    btnCidade: TToolButton;
    ToolButton9: TToolButton;
    btnFace: TToolButton;
    ToolButton8: TToolButton;
    btnSair: TToolButton;
    DSAEntregar: TDataSource;
    procedure miCidadeClick(Sender: TObject);
    procedure miParticipanteClick(Sender: TObject);
    procedure miProdutoClick(Sender: TObject);
    procedure miGrupoClick(Sender: TObject);
    procedure miTarefaClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DbGridAEntregarDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormActivate(Sender: TObject);
    procedure DbGridAEntregarCellClick(Column: TColumn);
    procedure miFacebookClick(Sender: TObject);
    procedure miSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DbGridAEntregarColExit(Sender: TObject);
  private
    { Private declarations }
    FGridImage: TGridImage;
    FTipoSistema: TTipoSistema;
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses UDataMod, UCidade, UParticipante, UProduto, UGRUPO, UTarefa, UFuncoes;

{$R *.dfm}

procedure TFPrincipal.miCidadeClick(Sender: TObject);
begin
//    if FCidade = nil then
        FCidade := TFCidade.Create(Application);
    FCidade.Show;
end;

procedure TFPrincipal.miFacebookClick(Sender: TObject);
begin
    ShellExecute(Application.Handle, 'open', PChar('www.facebook.com'), PChar(0), nil, SW_NORMAL);
end;

procedure TFPrincipal.DBGrid1CellClick(Column: TColumn);
begin
    if Column.FieldName = dm.CDSArqsTARNOME.FieldName then
        ShellExecute(Application.Handle, 'open', PChar(Dm.CDSArqsTARNOME.AsString), PChar(0), nil, SW_NORMAL);
end;

procedure TFPrincipal.DbGridAEntregarCellClick(Column: TColumn);
begin
    if Column.FieldName = dm.CDSAEntregarTARNOME.FieldName then
        if FileExists(Dm.CDSAEntregarTARARQUIVO.AsString) then
            ShellExecute(Application.Handle, 'open', PChar(Dm.CDSAEntregarTARARQUIVO.AsString), PChar(0), nil, SW_NORMAL)
        else
            Showmessage('Não foi possível localizar/abrir o arquivo. Verifique.');
end;

procedure TFPrincipal.DbGridAEntregarColExit(Sender: TObject);
begin
    TDbGrid(Sender).Repaint;
end;

procedure TFPrincipal.DbGridAEntregarDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
{     if Column.FieldName <> Dm.CDSAEntregarTARNOME.FieldName then
         try
             TDBGrid(Sender).Canvas.Font.Color := StringToColor(TDBGrid(Sender).DataSource.DataSet.FieldByName(dm.CDSGrupoGRUCOR.FieldName).AsString);
         except
             TDBGrid(Sender).Canvas.Font.Color := clBlack;
         end;  }
     FGridImage.DrawColumnCell(Sender, Rect, Column, State);
//     TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TFPrincipal.FormActivate(Sender: TObject);
begin
{$IFDEF RASTRO}
    Application.ProcessMessages;
    case StrToIntDef(InputQueryMasc(Self.Caption, 'Digite o código de segurança para abrir:'),0) of
       13: FTipoSistema := tpGerenciador;
       01: FTipoSistema := tpImpressao;
    else
        Application.Terminate;
    end;
    FPrincipal.OnActivate := nil;

    with miFacebook do
    begin
        Visible := FTipoSistema = tpGerenciador;
        miGrupo.Visible := Visible;
        miTarefa.Visible := Visible;
        PanGraf.Visible := Visible;
        ToolBarMenu.Visible := Visible;
        PanMenu.Visible := True;
        if not Visible then
            MainMenu.Destroy;
    end;
{$ENDIF}
end;

procedure TFPrincipal.miGrupoClick(Sender: TObject);
begin
    FGrupo := TFGrupo.Create(Application);
    FGrupo.Show;
end;

procedure TFPrincipal.miTarefaClick(Sender: TObject);
begin
    FTarefa := TFTarefa.Create(Application);
    FTarefa.Show;
end;

procedure TFPrincipal.miParticipanteClick(Sender: TObject);
begin
//    if FParticipante = nil then
    FParticipante := TFParticipante.Create(Application);
    FParticipante.Show;
end;

procedure TFPrincipal.miProdutoClick(Sender: TObject);
begin
//    if FProduto = nil then
    FProduto := TFProduto.Create(Application);
    FProduto.Show;
end;

procedure TFPrincipal.miSairClick(Sender: TObject);
begin
    application.Terminate;
end;

procedure TFPrincipal.Timer1Timer(Sender: TObject);
begin
    if not dm.DSProviderConnection.Connected then
        Exit;

    Try
        dm.MtdRetornaPercentual.ExecuteMethod;
        PanGraf.Caption :=  dm.MtdRetornaPercentual.Params[0].AsString + '% executado sobre o total de pontos.';
    except
        on E: Exception do
        begin
            PanGraf.Caption := 'Erro: ' + E.Message;
            Timer1.Enabled := False;
        end;
    End;

    {with dm.CDSArqs do
    begin
        Close;
        Open;
        First;
    end;}

    with dm.CDSAEntregar do
    begin
        Close;
        try
            Open;
            First;
        except
        end;
    end;

    with dm.CDSEntregues do
    begin
        Close;
        try
            Open;
            First;
        except
        end;
    end;

    AutoFitColunasGrid(DbGridAEntregar);
    AutoFitColunasGrid(DBGridEntregues);
end;

procedure TFPrincipal.FormCreate(Sender: TObject);
begin
    FGridImage := TGridImage.Create(DbGridAEntregar); //Falso de inicio
end;

procedure TFPrincipal.FormResize(Sender: TObject);
begin
    FGridImage.ResizeBitmap
end;

end.

