unit UParticipante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, DBGrids, DB, ComCtrls,
  XPMan, Buttons, ToolWin;

type
  TFParticipante = class(TForm)
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    Panel2: TPanel;
    txtPesquisa: TEdit;
    Label4: TLabel;
    Label2: TLabel;
    txtNome: TDBEdit;
    Label3: TLabel;
    txtcomplemento: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    txtBairro: TDBEdit;
    Label7: TLabel;
    txtfone1: TDBEdit;
    Label8: TLabel;
    txtfone2: TDBEdit;
    Label9: TLabel;
    txtfone3: TDBEdit;
    Label10: TLabel;
    txtFone4: TDBEdit;
    Label11: TLabel;
    txtCodCidade: TDBEdit;
    Label12: TLabel;
    txtLocalizacao: TDBEdit;
    txtObs: TDBRichEdit;
    Label13: TLabel;
    txtCidade: TDBLookupComboBox;
    txtEndereco: TDBEdit;
    ToolBarMenu: TToolBar;
    btnConsulta: TToolButton;
    ToolButton1: TToolButton;
    btnDuplicar: TToolButton;
    txtCod: TDBEdit;
    Label1: TLabel;
    PanRastro: TPanel;
    lblGrupo: TLabel;
    txtNomeGrupo: TDBLookupComboBox;
    txtNomeGrupo1: TDBLookupComboBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    txtCpf: TDBEdit;
    txtCnpj: TDBEdit;
    txtIdentidade: TDBEdit;
    DsCad: TDataSource;
    txtCodGrupo: TDBEdit;
    txtCodGrupo1: TDBEdit;
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure txtPesquisaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDuplicarClick(Sender: TObject);
    procedure btnConsultaClick(Sender: TObject);
    procedure DsCadStateChange(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FParticipante: TFParticipante;

implementation

uses UDataMod, Ufuncoes, UPesqAvancada;

{$R *.dfm}

procedure TFParticipante.FormCreate(Sender: TObject);
begin
{$IFDEF RASTRO}
    PanRastro.Visible := True;
{$ENDIF}
end;

procedure TFParticipante.FormShow(Sender: TObject);
begin
    if not Dm.CDSParticipante.Active then
        Dm.CDSParticipante.Open;
    if not Dm.CDSGrupo.Active then
        Dm.CDSGrupo.Open;
    if not Dm.CDSCidade.Active then
        Dm.CDSCidade.Open;
    txtPesquisa.SetFocus;
    SetupHackedNavigator(DBNavigator1, dm.ImageList1);
end;

procedure TFParticipante.btnConsultaClick(Sender: TObject);
begin
    AbrirConsultaAvancada(Dm.CDSParticipante, 'TPARTICIPANTE LEFT OUTER JOIN TCIDADE ON TCIDADE.CIDCODIGO = PARCIDADE ', 'PARCOD', DBGrid1);
end;

procedure TFParticipante.btnDuplicarClick(Sender: TObject);
begin
    Duplicar(Dm.CDSParticipante);
end;

procedure TFParticipante.DBGrid1TitleClick(Column: TColumn);
begin
    Dm.CDSParticipante.IndexFieldNames := Column.FieldName;
end;

procedure TFParticipante.txtPesquisaChange(Sender: TObject);
begin
    if txtPesquisa.Text <> '' then
        Dm.CDSParticipante.Locate(Dm.CDSParticipante.IndexFieldNames,txtpesquisa.Text,[loPartialKey, loCaseInsensitive]);
end;

procedure TFParticipante.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = 13) or (key = 40) then
        Perform(WM_nextDlgCtl, 0, 0);
    if (key = 38) then
        Perform(WM_nextDlgCtl, 1, 0);
end;

procedure TFParticipante.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
    if button = nbRefresh then
        ClickRefresh(DScad);
end;

procedure TFParticipante.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
    if button = nbInsert then
        txtNome.SetFocus;
end;

procedure TFParticipante.DsCadStateChange(Sender: TObject);
begin
    ChangeDBNav(DBNavigator1, Sender);
end;

end.
