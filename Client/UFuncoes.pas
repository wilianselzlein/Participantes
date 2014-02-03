unit UFuncoes;

interface

uses DbClient, DB, Forms, Controls, StdCtrls, Graphics, Dialogs,
    Windows, Variants, SysUtils, DBGrids, Classes, DBCtrls, Buttons;

type THackDBNavigator = class(TDBNavigator);

procedure StatusCDS(ACds: TClientDataSet);
function GetAveCharSize(Canvas: TCanvas): TPoint;
function InputQueryMasc(const ACaption, APrompt: string): WideString;
procedure ConsultaAvancada(ACds: TclientDataSet; APesquisa, ATabela: string; AGrid: TDbGrid);
procedure Duplicar(ACds: TClientDataSet);
procedure AutoFitColunasGrid(AGrid : TDBGrid);
procedure AlinhaColunasGrid(AGrid : TDBGrid);
procedure AbrirConsultaAvancada(ACds: TClientDataSet; ATabela, ACampo: string; AGrid: TDbGrid);
//procedure HackNavMouseUp (Sender:TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
procedure SetupHackedNavigator (const Navigator : TDBNavigator; const Glyphs : TImageList);
procedure ChangeDBNav(ADbNav: TDBNavigator; ADataSource: TObject);
procedure ClickRefresh(ADs: TDataSource);

const
    CAPTIONINPUTBOX = String('Participantes');

implementation

uses UPesqAvancada, UDataMod;

procedure StatusCDS(ACds: TClientDataSet);
begin
    if ACds.State in [dsEdit, dsinsert] then
        Exit;
    if ACds.RecordCount = 0 then
        ACds.Append
    else
        ACds.Edit;
end;

procedure ConsultaAvancada(ACds: TclientDataSet; APesquisa, ATabela: string; AGrid: TDbGrid);
var
    Campo: Variant;
    i, i2: Integer;
begin
    with dm.CDSConsulta do
    begin
        Campo := VarArrayCreate([0, ACds.FieldCount - 1],VarVariant);
        for i := 0 to (ACds.FieldCount - 1) do
            Campo[i] := ACds.Fields[i].FieldName;
        Close;
        CommandText :=
            ' SELECT * FROM '+ ATabela + ' WHERE 1 <> 1 ' + #13;
        if Trim(APesquisa) <> '' then
            for i := 0 to (ACds.FieldCount - 1) do
                 if (ACds.Fields[i].FieldKind <> fkLookup) and (Copy(ACds.Fields[i].FieldName, 1, 1) <> 'Q') then
                     CommandText := Commandtext + ' OR UPPER('+ Campo[i] + ') LIKE UPPER ('+ QuotedStr('%' + APesquisa + '%') +')' + #13;
        try
            Open;
        except
            on E: Exception do
                Showmessage('Erro: ' + E.Message + #13 + #13 + CommandText);
        end;
        for i2 := 0 to AGrid.Columns.Count - 1 do
            if FindField(AGrid.Columns[i2].FieldName) <> nil then
                FieldByName(AGrid.Columns[i2].FieldName).DisplayLabel := AGrid.Columns[i2].Title.Caption;
    end;
end;

function InputQueryMasc(const ACaption, APrompt: string): WideString;
var
  Form: TForm;
  Prompt: TLabel;
  Edit: TEdit;
  DialogUnits: TPoint;
  ButtonTop, ButtonWidth, ButtonHeight: Integer;
begin
  Result := '';
  Form := TForm.Create(Application);
  with Form do
    try
      Canvas.Font := Font;
      DialogUnits := GetAveCharSize(Canvas);
      BorderStyle := bsDialog;
      Caption := ACaption;
      ClientWidth := MulDiv(180, DialogUnits.X, 4);
      Position := poScreenCenter;
      Prompt := TLabel.Create(Form);
      with Prompt do
      begin
        Parent := Form;
        Caption := APrompt;
        Left := MulDiv(8, DialogUnits.X, 4);
        Top := MulDiv(8, DialogUnits.Y, 8);
        Constraints.MaxWidth := MulDiv(164, DialogUnits.X, 4);
        WordWrap := True;
      end;
      Edit := TEdit.Create(Form);
      with Edit do
      begin
        Parent := Form;
        Left := Prompt.Left;
        Top := Prompt.Top + Prompt.Height + 5;
        Width := MulDiv(164, DialogUnits.X, 4);
        MaxLength := 255;
        PasswordChar := '*';
        SelectAll;
      end;
      ButtonTop := Edit.Top + Edit.Height + 15;
      ButtonWidth := MulDiv(50, DialogUnits.X, 4);
      ButtonHeight := MulDiv(14, DialogUnits.Y, 8);
      with TButton.Create(Form) do
      begin
        Parent := Form;
        Caption := '&OK';
        ModalResult := mrOk;
        Default := True;
        SetBounds(MulDiv(38, DialogUnits.X, 4), ButtonTop, ButtonWidth,
          ButtonHeight);
      end;
      with TButton.Create(Form) do
      begin
        Parent := Form;
        Caption := '&Cancelar';
        ModalResult := mrCancel;
        Cancel := True;
        SetBounds(MulDiv(92, DialogUnits.X, 4), Edit.Top + Edit.Height + 15,
          ButtonWidth, ButtonHeight);
        Form.ClientHeight := Top + Height + 13;
      end;
      if ShowModal = mrOk then
        Result := Edit.Text;
    finally
      Form.Free;
    end;
end;
function GetAveCharSize(Canvas: TCanvas): TPoint;
var
  I: Integer;
  Buffer: array[0..51] of Char;
begin
  for I := 0 to 25 do Buffer[I] := Chr(I + Ord('A'));
  for I := 0 to 25 do Buffer[I + 26] := Chr(I + Ord('a'));
  GetTextExtentPoint(Canvas.Handle, Buffer, 52, TSize(Result));
  Result.X := Result.X div 52;
end;

procedure Duplicar(ACds: TClientDataSet);
var
    Campo: Variant;
    i: integer;
begin
    Campo := VarArrayCreate([0, ACds.FieldCount - 1],VarVariant);
    for i := 1 to (ACds.FieldCount - 1) do
        Campo[i] := ACds.Fields[i].Value;
    ACds.Append;
    for i := 1 to (ACds.FieldCount - 1) do
        if (ACds.Fields[i].FieldKind <> fkLookup) and (Copy(ACds.Fields[i].FieldName, 1, 1) <> 'Q')
        and (ACds.Fields[i].ProviderFlags <> []) and (Trim(VarToStr(Campo[i])) <> '')then
        try
             ACds.Fields[i].Value := Campo[i];
        except
             showmessage('Erro:' + ACds.Fields[i].FieldName + '=' + VarToStr(Campo[i]));
        end;
end;

procedure AutoFitColunasGrid(AGrid : TDBGrid);
const TamanhoPadrao : Integer = 10;
var
    F, T, G : Double;
    i : Integer;
begin
    T := 0;
    G := AGrid.Width - 30;
    for i := 0 to AGrid.Columns.Count - 1 do
        T := T + AGrid.Columns[i].Width;
    if T > G then
    begin
       F := T / G;
       for i := 0 to AGrid.Columns.Count - 1 do
           AGrid.Columns[i].Width := Trunc(AGrid.Columns[i].Width / F) - 1;
    end
    else
    begin
       if (T < G * 0.95) or (T > G * 0.9999999) then
       begin
           F := G / T;
           for i := 0 to AGrid.Columns.Count - 1 do
               AGrid.Columns[i].Width := Trunc(AGrid.Columns[i].Width * F) - 1;
       end;
    end;
    for i := 0 to AGrid.Columns.Count - 1 do
        if AGrid.Columns[i].Width < TamanhoPadrao then
            AGrid.Columns[i].Width := TamanhoPadrao;
end;

procedure AlinhaColunasGrid(AGrid : TDBGrid);
var i : byte;
begin
    for i := 0 to AGrid.Columns.Count - 1 do
    begin
         if AGrid.Columns[i].FieldName <> '' then
             case AGrid.DataSource.DataSet.FieldByName(AGrid.Columns[i].FieldName).DataType of
                 ftInteger, ftFloat, ftSmallint, ftCurrency : AGrid.Columns[i].Alignment := taRightJustify;
                 ftString, ftWord, ftFixedChar, ftWideString : AGrid.Columns[i].Alignment := taLeftJustify;
                 ftDate, ftDateTime, ftTime : AGrid.Columns[i].Alignment := taCenter;
             end;
         AGrid.Columns[i].Title.Alignment := AGrid.Columns[i].Alignment;
    end;
end;

procedure AbrirConsultaAvancada(ACds: TClientDataSet; ATabela, ACampo: string; AGrid: TDbGrid);
begin
    FPesqAvancada := TFPesqAvancada.Create(Application);
    with FPesqAvancada do
    begin
        FCdsOrigem := ACds;
        FTabelaOrigem := ATabela;
        FPesquisalocate := ACampo;
        FGrid := AGrid;
        show;
    end
end;

{procedure HackNavMouseUp (Sender:TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const MoveBy : integer = 5;
begin
 if not (Sender is TNavButton) then Exit;

 case TNavButton(Sender).Index of
   nbPrior:
     if (ssCtrl in Shift) then
       TDBNavigator(TNavButton(Sender).Parent).
         DataSource.DataSet.MoveBy(-MoveBy);
   nbNext:
     if (ssCtrl in Shift) then
       TDBNavigator(TNavButton(Sender).Parent).
         DataSource.DataSet.MoveBy(MoveBy);
  end;
end;}

procedure SetupHackedNavigator (const Navigator : TDBNavigator; const Glyphs : TImageList);
const Captions : array[TNavigateBtn] of string = ('Primeiro', 'Anterior', 'Próximo', 'Último', 'Novo', 'Excluir', 'Alterar', 'Salvar', 'Cancelar', 'Atualizar', 'Aplicar', 'Cancelar');
var btn : TNavigateBtn;
begin
  Navigator.Flat := false;
  THackDBNavigator(Navigator).Color := clWhite;
  for btn := Low(TNavigateBtn) to High(TNavigateBtn) do
    with THackDBNavigator(Navigator).Buttons[btn] do
    begin
      //from the Captions const array
      Hint := Captions[btn];
      //the number of images in the Glyph property
      NumGlyphs := 1;
      // Remove the old glyph.
      Glyph := nil;
      // Assign the custom one
      Glyphs.GetBitmap(Integer(btn),Glyph);
      // gylph above text
      Layout := blGlyphTop;
      // explained later
//      OnMouseUp := HackNavMouseUp;
    end;
end;

procedure ChangeDBNav(ADbNav: TDBNavigator; ADataSource: TObject);
begin
    with ADbNav do
    begin
         Controls[0].Enabled := not (TDataSource(ADataSource).State in [dsEdit, dsInsert]);
         Controls[1].Enabled := Controls[0].Enabled;
         Controls[2].Enabled := Controls[0].Enabled;
         Controls[3].Enabled := Controls[0].Enabled;
         Controls[4].Enabled := Controls[0].Enabled;
         Controls[5].Enabled := Controls[0].Enabled;
         Controls[6].Enabled := Controls[0].Enabled;
         Controls[7].Enabled := not Controls[0].Enabled;
         Controls[8].Enabled := not Controls[0].Enabled;
         Controls[9].Enabled := Controls[0].Enabled;
    end;
end;

procedure ClickRefresh(ADs: TDataSource);
begin
    TClientDataSet(Ads.DataSet).Close;
    TClientDataSet(Ads.DataSet).Open;
end;

end.
