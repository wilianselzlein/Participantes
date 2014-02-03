unit UCidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, DBGrids, DB, Buttons,
  ComCtrls, ToolWin;

type
  TFCidade = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    txtCodigo: TDBEdit;
    txtCidade: TDBEdit;
    txtEstado: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel2: TPanel;
    txtPesquisa: TEdit;
    Label4: TLabel;
    ToolBarMenu: TToolBar;
    btnConsulta: TToolButton;
    ToolButton1: TToolButton;
    btnDuplicar: TToolButton;
    DSCad: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure txtPesquisaChange(Sender: TObject);
    procedure btnDuplicarClick(Sender: TObject);
    procedure btnConsultaClick(Sender: TObject);
    procedure DSCadStateChange(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCidade: TFCidade;

implementation

uses UDataMod, Ufuncoes, UPesqAvancada;

{$R *.dfm}

procedure TFCidade.FormShow(Sender: TObject);
begin
    if not Dm.CDSCidade.Active then
        Dm.CDSCidade.Open;
    txtPesquisa.SetFocus;
    SetupHackedNavigator(DBNavigator1, dm.ImageList1);
end;

procedure TFCidade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree;
end;

procedure TFCidade.btnConsultaClick(Sender: TObject);
begin
    AbrirConsultaAvancada(Dm.CDSCidade, 'TCIDADE', 'CIDCODIGO', DBGrid1);
end;

procedure TFCidade.btnDuplicarClick(Sender: TObject);
begin
    Duplicar(Dm.CDSCidade);
end;

procedure TFCidade.DBGrid1TitleClick(Column: TColumn);
begin
    Dm.CDSCidade.IndexFieldNames := Column.FieldName;
end;

procedure TFCidade.txtPesquisaChange(Sender: TObject);
begin
    if txtPesquisa.Text <> '' then
        Dm.CDSCidade.Locate(Dm.CDSCidade.IndexFieldNames,txtpesquisa.Text,[loPartialKey, loCaseInsensitive]);
end;

procedure TFCidade.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = 13) or (key = 40) then
        Perform(WM_nextDlgCtl, 0, 0);
    if (key = 38) then
        Perform(WM_nextDlgCtl, 1, 0);
end;

procedure TFCidade.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
    if button = nbRefresh then
        ClickRefresh(DScad);
end;

procedure TFCidade.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
    if button = nbInsert then
        txtCidade.SetFocus;
end;

procedure TFCidade.DSCadStateChange(Sender: TObject);
begin
    ChangeDBNav(DBNavigator1, Sender);
end;

end.
