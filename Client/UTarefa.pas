unit UTarefa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, DBGrids, DB, ComCtrls,
  XPMan, DateUtils, Buttons, ShellApi, ToolWin;

type
  TFTarefa = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    Panel2: TPanel;
    txtPesquisa: TEdit;
    Label4: TLabel;
    Label2: TLabel;
    txtNome: TDBEdit;
    Label3: TLabel;
    txtDataHoraCadastro: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    txtEdicao: TDBEdit;
    Label11: TLabel;
    txtCodParticipante: TDBEdit;
    Label12: TLabel;
    txtArquivo: TDBEdit;
    txtParticipante: TDBLookupComboBox;
    txtDescricao: TDBEdit;
    lblGrupo: TLabel;
    txtNomeGrupo: TDBLookupComboBox;
    Label1: TLabel;
    txtCod: TDBEdit;
    Label14: TLabel;
    txtPontos: TDBEdit;
    Label15: TLabel;
    txtCodGrupo: TDBEdit;
    btnSelecionar: TSpeedButton;
    btnAbrir: TSpeedButton;
    ToolBarMenu: TToolBar;
    btnConsulta: TToolButton;
    ToolButton1: TToolButton;
    btnDuplicar: TToolButton;
    txtPontos1: TDBEdit;
    Label8: TLabel;
    txtPontos3: TDBEdit;
    txtNumero: TDBEdit;
    Label16: TLabel;
    DSCad: TDataSource;
    btnBaixar: TSpeedButton;
    gbLegenda: TGroupBox;
    rbTodas: TRadioButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Label7: TLabel;
    txtDataHoraEntrega: TDBEdit;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure txtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure txtPesquisaChange(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnSelecionarClick(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
    procedure btnDuplicarClick(Sender: TObject);
    procedure btnConsultaClick(Sender: TObject);
    procedure DSCadStateChange(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure rbTodasClick(Sender: TObject);
    procedure btnBaixarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTarefa: TFTarefa;

implementation

uses UDataMod, Ufuncoes, UPesqAvancada;

{$R *.dfm}

procedure TFTarefa.FormShow(Sender: TObject);
begin
    if not Dm.CDSParticipante.Active then
        Dm.CDSParticipante.Open;
    if not Dm.CDSGrupo.Active then
        Dm.CDSGrupo.Open;
    if not Dm.CDSTarefa.Active then
        Dm.CDSTarefa.Open;
    txtPesquisa.SetFocus;
    SetupHackedNavigator(DBNavigator1, dm.ImageList1);
end;

procedure TFTarefa.rbTodasClick(Sender: TObject);
begin
    dm.CDSTarefa.Close;
    dm.MtdRetornaTarefas.Params[0].AsInteger := TRadioButton(Sender).Tag;
    dm.MtdRetornaTarefas.ExecuteMethod;
    dm.CDSTarefa.Open;
end;

procedure TFTarefa.btnAbrirClick(Sender: TObject);
begin
    ShellExecute(Application.Handle, 'open', PChar(Dm.CDSTarefaTARARQUIVO.AsString), PChar(0), nil, SW_NORMAL);
end;

procedure TFTarefa.btnSelecionarClick(Sender: TObject);
begin
    if dm.OpenDialog1.Execute then
    begin
        StatusCDS(dm.CDSTarefa);
        dm.CDSTarefaTARARQUIVO.AsString := dm.OpenDialog1.FileName;
    end;
end;

procedure TFTarefa.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     if (dm.CDSTarefaTARDATAHORAENTREGUE.AsString = '') and (dm.CDSTarefaTARDATAHORAENTREGA.AsDateTime > now)  then
         DBGrid1.Canvas.Font.Color := clRed
     else if dm.CDSTarefaTARDATAHORAENTREGUE.AsString <> '' then
         DBGrid1.Canvas.Font.Color := clGreen
     else
         DBGrid1.Canvas.Font.Color := clBlack;
     if gdSelected in State then
     begin
          DBGrid1.Canvas.Font.Style := Canvas.Font.Style + [fsBold];
          DBGrid1.Canvas.Brush.Color := DBGrid1.Color; // clHotLight; // RGB(89, 172, 255);
          DBGrid1.Canvas.FillRect(Rect);
     end;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TFTarefa.btnBaixarClick(Sender: TObject);
begin
    StatusCDS(dm.CDSTarefa);
    dm.CDSTarefaTARDATAHORAENTREGUE.AsDateTime := now;
    dm.CDSTarefaTARPONTOS.AsInteger := StrToIntDef(InputBox(CAPTIONINPUTBOX, PChar(
        'Digite:' + #13 +
        'Zero para tarefa não concluída;' + #13 +
        'O número de pontos alcançados para essa tarefa;' + #13 + #13 +
        'Pontuação máxima: ' + dm.CDSTarefaTARPONTOS1.AsString), dm.CDSTarefaTARPONTOS1.AsString),0);
    dm.CDSTarefa.Post;
end;

procedure TFTarefa.btnConsultaClick(Sender: TObject);
begin
    AbrirConsultaAvancada(Dm.CDSTarefa, 'TTAREFA', 'TARCODIGO', DBGrid1);
end;

procedure TFTarefa.btnDuplicarClick(Sender: TObject);
begin
    Duplicar(Dm.CDSTarefa);
end;

procedure TFTarefa.DBGrid1TitleClick(Column: TColumn);
begin
    Dm.CDSTarefa.IndexFieldNames := Column.FieldName;
end;

procedure TFTarefa.txtPesquisaChange(Sender: TObject);
begin
    if txtPesquisa.Text <> '' then
        Dm.CDSTarefa.Locate(Dm.CDSTarefa.IndexFieldNames,txtpesquisa.Text,[loPartialKey, loCaseInsensitive]);
end;

procedure TFTarefa.txtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = 13) or (key = 40) then
        Perform(WM_nextDlgCtl, 0, 0);
    if (key = 38) then
        Perform(WM_nextDlgCtl, 1, 0);
end;

procedure TFTarefa.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
    if button = nbRefresh then
        ClickRefresh(DScad);
end;

procedure TFTarefa.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
    if button = nbInsert then
        txtNumero.SetFocus;
end;

procedure TFTarefa.DSCadStateChange(Sender: TObject);
begin
    ChangeDBNav(DBNavigator1, Sender);
end;

end.
