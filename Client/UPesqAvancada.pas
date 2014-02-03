unit UPesqAvancada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, DBClient, Buttons;

type
  TFPesqAvancada = class(TForm)
    pnlPesqAvancada: TPanel;
    txtPesqAvancada: TEdit;
    DBPesqAvancada: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label4: TLabel;
    DSConsulta: TDataSource;
    chkAjuste: TCheckBox;
    procedure txtPesqAvancadaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBPesqAvancadaDblClick(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBPesqAvancadaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FTabelaOrigem: String;
    FPesquisaLocate: String;
    FCdsOrigem: TClientDataSet;
    FGrid: TDBGrid;
  end;

var
  FPesqAvancada: TFPesqAvancada;

implementation

uses UDataMod, Ufuncoes;

{$R *.dfm}

procedure TFPesqAvancada.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
    if Button = nbEdit then
        DBPesqAvancadaDblClick(Sender);
end;

procedure TFPesqAvancada.DBPesqAvancadaDblClick(Sender: TObject);
begin
    FCdsOrigem.Locate(FPesquisalocate, dm.CDSConsulta.Fields[0].value ,[loCaseInsensitive, loPartialKey]);
    Close;
end;

procedure TFPesqAvancada.DBPesqAvancadaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     if Pos(UpperCase(txtPesqAvancada.Text), UpperCase(dm.CDSConsulta.FieldByName(Column.FieldName).AsString)) > 0  then
         Column.Font.Color := clRed
     else
         //DBPesqAvancada.Canvas.Font.
         Column.Font.Color := clBlack;
     DBPesqAvancada.DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TFPesqAvancada.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    dm.CDSConsulta.Close;
    Action := Cafree;
end;

procedure TFPesqAvancada.FormShow(Sender: TObject);
begin
    SetupHackedNavigator(DBNavigator1, dm.ImageList1);
end;

procedure TFPesqAvancada.txtPesqAvancadaKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    begin
        ConsultaAvancada(FCdsOrigem, txtPesqAvancada.Text, FTabelaOrigem, FGrid);
        if chkAjuste.Checked then
        begin
            AutoFitColunasGrid(DBPesqAvancada);
            AlinhaColunasGrid(DBPesqAvancada);
        end;
    end;
end;

end.
