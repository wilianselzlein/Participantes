unit UGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, DBGrids, DB, Buttons,
  ToolWin, ComCtrls;

type
  TFGrupo = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Panel2: TPanel;
    txtPesquisa: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    txtPeso: TDBEdit;
    Label6: TLabel;
    txtNomeResp: TDBLookupComboBox;
    txtNome: TDBEdit;
    Label1: TLabel;
    txtCodigo: TDBEdit;
    ColorBox1: TColorBox;
    ToolBarMenu: TToolBar;
    btnConsulta: TToolButton;
    ToolButton1: TToolButton;
    btnDuplicar: TToolButton;
    txtCodResp: TDBEdit;
    DSCad: TDataSource;
    DBNavigator1: TDBNavigator;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure txtPesquisaChange(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ColorBox1Change(Sender: TObject);
    procedure btnConsultaClick(Sender: TObject);
    procedure btnDuplicarClick(Sender: TObject);
    procedure DSCadStateChange(Sender: TObject);
    procedure DSCadDataChange(Sender: TObject; Field: TField);
    procedure DBNavigator1BeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGrupo: TFGrupo;

implementation

uses UDataMod, UFuncoes, UPesqAvancada;

{$R *.dfm}

procedure TFGrupo.FormShow(Sender: TObject);
begin
    if not Dm.CDSGrupo.Active then
        Dm.CDSGrupo.Open;
    if not Dm.CDSParticipante.Active then
        Dm.CDSParticipante.Open;
    txtPesquisa.SetFocus;
    SetupHackedNavigator(DBNavigator1, dm.ImageList1);
end;

procedure TFGrupo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree;
end;

procedure TFGrupo.btnConsultaClick(Sender: TObject);
begin
    AbrirConsultaAvancada(Dm.CDSGrupo, 'TGRUPO', 'GRUCODIGO', DBGrid1);
end;

procedure TFGrupo.btnDuplicarClick(Sender: TObject);
begin
    Duplicar(DM.CDSGrupo);
end;

procedure TFGrupo.ColorBox1Change(Sender: TObject);
begin
    if dm.CDSGrupo.State in [dsEdit, dsinsert] then
//    StatusCDS(DM.CDSGrupo);
        dm.CDSGrupoGRUCOR.AsString := ColorToString(ColorBox1.Selected);
end;

procedure TFGrupo.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     try
         DBGrid1.Canvas.Font.Color := StringToColor(dm.CDSGrupoGRUCOR.AsString);
     except
         DBGrid1.Canvas.Font.Color := clBlack;
     end;
     if gdSelected in State then
     begin
          DBGrid1.Canvas.Font.Style := Canvas.Font.Style + [fsBold];
          DBGrid1.Canvas.Brush.Color := DBGrid1.Color; // clHotLight; // RGB(89, 172, 255);
          DBGrid1.Canvas.FillRect(Rect);
     end;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TFGrupo.DBGrid1TitleClick(Column: TColumn);
begin
    Dm.CDSGrupo.IndexFieldNames := Column.FieldName;
end;

procedure TFGrupo.txtPesquisaChange(Sender: TObject);
begin
    if txtPesquisa.Text <> '' then
        Dm.CDSGrupo.Locate(Dm.CDSGrupo.IndexFieldNames,txtpesquisa.Text,[loPartialKey, loCaseInsensitive]);
end;

procedure TFGrupo.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = 13) or (key = 40) then
        Perform(WM_nextDlgCtl, 0, 0);
    if (key = 38) then
        Perform(WM_nextDlgCtl, 1, 0);
end;

procedure TFGrupo.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
    if button = nbRefresh then
        ClickRefresh(DScad);
end;

procedure TFGrupo.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
    if button = nbInsert then
        txtNome.SetFocus;
end;

procedure TFGrupo.DSCadDataChange(Sender: TObject; Field: TField);
begin
    try
        ColorBox1.Selected := StringToColor(dm.CDSGrupoGRUCOR.AsString);
    except
        ColorBox1.Selected := clBlack;
    end;
end;

procedure TFGrupo.DSCadStateChange(Sender: TObject);
begin
    ChangeDBNav(DBNavigator1, Sender);
end;

end.
