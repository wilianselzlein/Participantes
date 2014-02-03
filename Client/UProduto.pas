unit UProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, DBGrids, DB, ComCtrls,
  XPMan, Menus, ExtDlgs, Jpeg, Buttons, ToolWin;

type
  TFProduto = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    txtPesquisa: TEdit;
    Label4: TLabel;
    PgProdutos: TPageControl;
    TabCadastro: TTabSheet;
    Label2: TLabel;
    txtNome: TDBEdit;
    txtReferencia: TDBEdit;
    Label5: TLabel;
    Label3: TLabel;
    txtPreco: TDBEdit;
    DsVinculo: TDataSource;
    OpenPictureDialog1: TOpenPictureDialog;
    DBNavigator1: TDBNavigator;
    ToolBarMenu: TToolBar;
    btnConsulta: TToolButton;
    ToolButton1: TToolButton;
    btnDuplicar: TToolButton;
    DSCad: TDataSource;
    TabAvancado: TTabSheet;
    PageControl1: TPageControl;
    TabCadAvancado: TTabSheet;
    TabVinculacaoAvanc: TTabSheet;
    Gridvinculacao: TDBGrid;
    DBImage1: TDBImage;
    Label13: TLabel;
    txtObs: TDBRichEdit;
    txtPeso: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    txtQuantidade: TDBEdit;
    txtTamanho: TDBEdit;
    txtComplemento: TDBEdit;
    Label1: TLabel;
    Label10: TLabel;
    DBEdit2: TDBEdit;
    txtCodParticipante: TDBEdit;
    txtParticipante: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure txtPesquisaChange(Sender: TObject);
    procedure DBImage1Click(Sender: TObject);
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
  FProduto: TFProduto;

implementation

uses UDataMod, Ufuncoes, UPesqAvancada;

{$R *.dfm}

procedure TFProduto.FormShow(Sender: TObject);
begin
    if not Dm.CDSProduto.Active then
        Dm.CDSProduto.Open;
    if not Dm.CDSParticipante.Active then
        Dm.CDSParticipante.Open;
    txtPesquisa.SetFocus;
    SetupHackedNavigator(DBNavigator1, dm.ImageList1);
    dm.CDSAssociacao.Open;
end;

procedure TFProduto.btnConsultaClick(Sender: TObject);
begin
    AbrirConsultaAvancada(Dm.CDSProduto, 'TPRODUTO', 'PROCODIGO', DBGrid1);
end;

procedure TFProduto.btnDuplicarClick(Sender: TObject);
begin
    Duplicar(DM.CDSProduto);
end;

procedure TFProduto.DBGrid1TitleClick(Column: TColumn);
begin
    Dm.CDSProduto.IndexFieldNames := Column.FieldName;
end;

procedure TFProduto.txtPesquisaChange(Sender: TObject);
begin
    if txtPesquisa.Text <> '' then
        Dm.CDSProduto.Locate(Dm.CDSProduto.IndexFieldNames,txtpesquisa.Text,[loPartialKey, loCaseInsensitive]);
end;

procedure TFProduto.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = 13) or (key = 40) then
        Perform(WM_nextDlgCtl, 0, 0);
    if (key = 38) then
        Perform(WM_nextDlgCtl, 1, 0);
end;

procedure TFProduto.DBImage1Click(Sender: TObject);
var
    Foto : TJPEGImage;
    Bmp: TBitMap;
begin
    if OpenPictureDialog1.Execute then
    begin
        Foto := TJPEGImage.Create;
        Bmp := TBitmap.Create;
        try
            Foto.LoadFromFile(OpenPictureDialog1.FileName);
            Bmp.Assign(Foto);
            if dm.CDSProduto.RecordCount = 0 then
                dm.CDSProduto.Append
            else
                if dm.CDSProduto.State = dsBrowse then
                    dm.CDSProduto.Edit;
            DM.CDSProdutoPROFOTO.Assign(Bmp);
            DM.CDSProduto.Post;
        finally
            Foto.Free;
            Bmp.Free;
        end;
    end
end;

procedure TFProduto.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
    if button = nbRefresh then
        ClickRefresh(DScad);
end;

procedure TFProduto.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
    if button = nbInsert then
        txtNome.SetFocus;
end;

procedure TFProduto.DSCadStateChange(Sender: TObject);
begin
    ChangeDBNav(DBNavigator1, Sender);
end;

end.
