unit UServerMethods;

interface

uses System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  Data.FMTBcd, Data.DBXFirebird, Data.DB, Data.SqlExpr, Datasnap.Provider,
  Vcl.Forms, Datasnap.DBClient, Variants;

type
{$METHODINFO ON}
  TServerMethods = class(TDSServerModule)
    QParticpante: TSQLDataSet;
    QParticpantePARCOD: TIntegerField;
    QParticpantePARNOME: TStringField;
    QParticpantePARCOMPLEMENTO: TStringField;
    QParticpantePARENDERECO: TStringField;
    QParticpantePARBAIRRO: TStringField;
    QParticpantePARFONE1: TStringField;
    QParticpantePARFONE2: TStringField;
    QParticpantePARFONE3: TStringField;
    QParticpantePARFONE4: TStringField;
    QParticpantePAROBS: TStringField;
    QParticpantePARLOCALIZACAO: TStringField;
    QParticpantePARCIDADE: TIntegerField;
    QParticpantePARFOTO: TBlobField;
    QParticpantePARGRUPO: TIntegerField;
    QParticpantePARGRUPO1: TIntegerField;
    QParticpantePARCPF: TStringField;
    QParticpantePARCNPJ: TStringField;
    QParticpantePARIDENTIDADE: TStringField;
    QParticpanteCIDNOME: TStringField;
    DSPParticipante: TDataSetProvider;
    QCidade: TSQLDataSet;
    QCidadeCIDCODIGO: TIntegerField;
    QCidadeCIDNOME: TStringField;
    QCidadeCIDESTADO: TStringField;
    DSPCidade: TDataSetProvider;
    QAssociacao: TSQLDataSet;
    QAssociacaoASSCODIGO: TIntegerField;
    QAssociacaoASSPARTICIPANTE: TIntegerField;
    QAssociacaoASSPRODUTO: TIntegerField;
    QAssociacaoASSOBS: TStringField;
    QProduto: TSQLDataSet;
    QProdutoPROCODIGO: TIntegerField;
    QProdutoPRONOME: TStringField;
    QProdutoPROREFERENCIA: TStringField;
    QProdutoPROPRECO: TFMTBCDField;
    QProdutoPROQUANTIDADE: TIntegerField;
    QProdutoPROFOTO: TBlobField;
    QProdutoPROCOMPLEMENTO: TStringField;
    QProdutoPROPESO: TFMTBCDField;
    QProdutoPROTAMANHO: TStringField;
    QProdutoPROOBS: TStringField;
    QProdutoPROPROPRIETARIO: TIntegerField;
    QProdutoPROCONTATO: TStringField;
    QProdutoPARNOME: TStringField;
    DSPProduto: TDataSetProvider;
    DSProduto: TDataSource;
    SQLConn: TSQLConnection;
    QExec: TSQLQuery;
    QGrupo: TSQLDataSet;
    QGrupoGRUCODIGO: TIntegerField;
    QGrupoGRUNOM: TStringField;
    QGrupoGRUCOR: TStringField;
    QGrupoGRUPESO: TFMTBCDField;
    QGrupoGRURESPONSAVEL: TIntegerField;
    DSPGrupo: TDataSetProvider;
    QTarefa: TSQLDataSet;
    QTarefaTARCODIGO: TIntegerField;
    QTarefaTARNOME: TStringField;
    QTarefaTARDESCRICAO: TStringField;
    QTarefaTAREDICAO: TIntegerField;
    QTarefaTARPONTOS: TIntegerField;
    QTarefaTARPARTICIPANTE: TIntegerField;
    QTarefaTARARQUIVO: TStringField;
    QTarefaTARPREVISAO: TStringField;
    QTarefaTARGRUPO: TIntegerField;
    QTarefaTARPONTOS1: TIntegerField;
    QTarefaTARNUMERO: TIntegerField;
    DSPTarefa: TDataSetProvider;
    DSPArqs: TDataSetProvider;
    QArqs: TSQLDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    IntegerField5: TIntegerField;
    DSPEntregues: TDataSetProvider;
    QEntregues: TSQLDataSet;
    IntegerField6: TIntegerField;
    StringField6: TStringField;
    StringField7: TStringField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    StringField9: TStringField;
    StringField10: TStringField;
    IntegerField10: TIntegerField;
    QEntreguesGRUCODIGO: TIntegerField;
    QEntreguesGRUNOM: TStringField;
    QEntreguesGRUCOR: TStringField;
    QEntreguesGRUPESO: TFMTBCDField;
    QEntreguesGRURESPONSAVEL: TIntegerField;
    DSPAEntregar: TDataSetProvider;
    QAEntregar: TSQLDataSet;
    IntegerField11: TIntegerField;
    StringField11: TStringField;
    StringField12: TStringField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    StringField14: TStringField;
    StringField15: TStringField;
    IntegerField15: TIntegerField;
    QAEntregarGRUCODIGO: TIntegerField;
    QAEntregarGRUNOM: TStringField;
    QAEntregarGRUCOR: TStringField;
    QAEntregarGRUPESO: TFMTBCDField;
    QAEntregarGRURESPONSAVEL: TIntegerField;
    QConsulta: TSQLDataSet;
    DSPConsulta: TDataSetProvider;
    QTarefaTARDATAHORACADASTRO: TSQLTimeStampField;
    QTarefaTARDATAHORAENTREGA: TSQLTimeStampField;
    QTarefaTARDATAHORAENTREGUE: TSQLTimeStampField;
    QArqsTARPONTOS1: TIntegerField;
    QArqsTARNUMERO: TIntegerField;
    QArqsTARDATAHORACADASTRO: TSQLTimeStampField;
    QArqsTARDATAHORAENTREGA: TSQLTimeStampField;
    QArqsTARDATAHORAENTREGUE: TSQLTimeStampField;
    QEntreguesTARPONTOS1: TIntegerField;
    QEntreguesTARNUMERO: TIntegerField;
    QEntreguesTARDATAHORACADASTRO: TSQLTimeStampField;
    QEntreguesTARDATAHORAENTREGA: TSQLTimeStampField;
    QEntreguesTARDATAHORAENTREGUE: TSQLTimeStampField;
    QAEntregarTARPONTOS1: TIntegerField;
    QAEntregarTARNUMERO: TIntegerField;
    QAEntregarTARDATAHORACADASTRO: TSQLTimeStampField;
    QAEntregarTARDATAHORAENTREGA: TSQLTimeStampField;
    QAEntregarTARDATAHORAENTREGUE: TSQLTimeStampField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure DSPParticipanteBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure DSPCidadeBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure DSPProdutoBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure DSPGrupoBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure DSPTarefaBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
  private
    { Private declarations }
    function ExecSQL(ASql: String): Variant; overload;
    procedure ExecSQL(ASql: String; AFecha: Boolean); overload;
    function VarToFloat(AVariant: Variant): Double;
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    procedure RetornaTarefas(Tipo: Integer);
    function RetornaPercentual: Double;
  end;
{$METHODINFO OFF}

implementation

{$R *.dfm}

uses System.StrUtils, UServer;



procedure TServerMethods.DataModuleCreate(Sender: TObject);
const ARQ: String = 'Server.ini';
var v: byte;
begin
    FServer.CriaConexao;
    if FileExists(ExtractFilePath(Application.ExeName) + ARQ) then
        SQLConn.params.LoadFromFile(ExtractFilePath(Application.ExeName) + ARQ)
    else
        SQLConn.params.SaveToFile(ExtractFilePath(Application.ExeName) + ARQ);
    SQLConn.Connected := True;

    try
        v := ExecSql('SELECT VERCODIGO FROM TVERSAO');
    except
        v := 0;
    end;

    if v = 0 then
    begin
        ExecSQL('CREATE TABLE TVERSAO (VERCODIGO INTEGER NOT NULL);', True);
        ExecSQL('ALTER TABLE TVERSAO ADD CONSTRAINT PK_TTVERSAO PRIMARY KEY (VERCODIGO);', True);
        ExecSQL('INSERT INTO TVERSAO (VERCODIGO) VALUES (1);', True);
    end;
    if v < 1 then
    begin
        ExecSQL(
            ' CREATE TABLE TGRUPO ( ' +
            ' GRUCODIGO INTEGER NOT NULL, ' +
            ' GRUNOM VARCHAR(50), ' +
            ' GRUCOR VARCHAR(20), ' +
            ' GRUPESO NUMERIC(15,2), ' +
            ' GRURESPONSAVEL INTEGER);', True);
        ExecSQL('ALTER TABLE TGRUPO ADD CONSTRAINT PK_TGRUPON PRIMARY KEY (GRUCODIGO);', True);
        ExecSQL('ALTER TABLE TGRUPO ADD CONSTRAINT FK_GRUPO_PARTICIPANTES FOREIGN KEY (GRURESPONSAVEL) REFERENCES TPARTICIPANTE(PARCOD) ON UPDATE CASCADE;', True);
        ExecSQL('ALTER TABLE TPARTICIPANTE ADD PARGRUPO INTEGER;', True);
        ExecSQL('ALTER TABLE TPARTICIPANTE ADD CONSTRAINT FK_PARTICIPANTE_GRUPO FOREIGN KEY (PARGRUPO) REFERENCES TGRUPO (GRUCODIGO) ON UPDATE CASCADE;', True);
        ExecSQL(
            ' CREATE TABLE TTAREFA ( ' +
            ' TARCODIGO INTEGER NOT NULL, ' +
            ' TARNOME VARCHAR(100), ' +
            ' TARDESCRICAO VARCHAR(250), ' +
            ' TAREDICAO INTEGER DEFAULT 0, ' +
            ' TARPONTOS INTEGER DEFAULT 0, ' +
            ' TARHORA TIME, ' +
            ' TARHORAENTREGA TIME, ' +
            ' TARSTATUS VARCHAR(20) DEFAULT '''', ' +
            ' TARPARTICIPANTE INTEGER, ' +
            ' TARARQUIVO VARCHAR(250), ' +
            ' TARPREVISAO VARCHAR(1) DEFAULT ''N'', ' +
            ' TARGRUPO INTEGER); ', True);
        ExecSQL('ALTER TABLE TTAREFA ADD CONSTRAINT PK_TTAREFA PRIMARY KEY (TARCODIGO);', True);
        ExecSQL('ALTER TABLE TTAREFA ADD CONSTRAINT FK_TAREFA_PARTICIPANTE FOREIGN KEY (TARPARTICIPANTE) REFERENCES TPARTICIPANTE (PARCOD) ON UPDATE CASCADE;', True);
        ExecSQL('ALTER TABLE TTAREFA ADD CONSTRAINT FK_TAREFA_GRUPO FOREIGN KEY (TARGRUPO) REFERENCES TGRUPO (GRUCODIGO) ON UPDATE CASCADE;', True);
        ExecSQL(
            ' ALTER TABLE TPARTICIPANTE' +
            ' ADD PARGRUPO1 INTEGER,' +
            ' ADD PARCPF VARCHAR(14),' +
            ' ADD PARCNPJ VARCHAR(18),' +
            ' ADD PARIDENTIDADE VARCHAR(20);', True);
        ExecSQL('ALTER TABLE TPARTICIPANTE ADD CONSTRAINT FK_PARTICIPANTE_GRUPO1 FOREIGN KEY (PARGRUPO1) REFERENCES TGRUPO (GRUCODIGO) ON UPDATE CASCADE;', True);
        ExecSQL(
            ' ALTER TABLE TTAREFA' +
            ' ADD TARPONTOS1 INTEGER,' +
            ' ADD TARPONTOS2 INTEGER,' +
            ' ADD TARPONTOS3 INTEGER,' +
            ' ADD TARPONTOS4 INTEGER,' +
            ' ADD TARPONTOS5 INTEGER,' +
            ' ADD TARENTREGUE VARCHAR(1) DEFAULT ''N'';', True);
        ExecSQL('ALTER TABLE TTAREFA DROP TARSTATUS;', True);
    end;
    if v < 3 then
    begin
        ExecSQL(
            ' ALTER TABLE TTAREFA' +
            ' ADD TARNUMERO INTEGER,' +
            ' DROP TARPONTOS2,' +
            ' DROP TARPONTOS3,' +
            ' DROP TARPONTOS4,' +
            ' DROP TARPONTOS5;', True);
    end;
    if v < 4 then
    begin
        ExecSQL(
            ' ALTER TABLE TPRODUTO ' +
            ' ADD PROPROPRIETARIO INTEGER, ' +
            ' ADD PROCONTATO VARCHAR(50);', True);
        ExecSQL('ALTER TABLE TPRODUTO ADD CONSTRAINT FK_PRODUTO_PARTICIPANTE FOREIGN KEY (PROPROPRIETARIO) REFERENCES TPARTICIPANTE (PARCOD) ON UPDATE CASCADE;', True);
    end;
    if v < 5 then
    begin
        ExecSQL(
            ' ALTER TABLE TTAREFA' +
            ' ADD TARDATAHORACADASTRO TIMESTAMP,' +
            ' ADD TARDATAHORAENTREGA TIMESTAMP,' +
            ' ADD TARDATAHORAENTREGUE TIMESTAMP,' +
            ' DROP TARENTREGUE,' +
            ' DROP TARHORA,' +
            ' DROP TARHORAENTREGA;', True);
    end;
    ExecSQL('UPDATE TVERSAO SET VERCODIGO = 5;', True);
end;

procedure TServerMethods.DataModuleDestroy(Sender: TObject);
begin
  FServer.FechaConexao;
end;

procedure TServerMethods.DSPCidadeBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
    if UpdateKind = ukInsert then
        DeltaDS.FieldByName('CIDCODIGO').NewValue := VarToFloat(ExecSQL('SELECT MAX(CIDCODIGO) FROM TCIDADE')) + 1;
end;

procedure TServerMethods.DSPGrupoBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
    if UpdateKind = ukInsert then
        DeltaDS.FieldByName('GRUCODIGO').NewValue := VarToFloat(ExecSQL('SELECT MAX(GRUCODIGO) FROM TGRUPO')) + 1;
end;

procedure TServerMethods.DSPParticipanteBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
    DeltaDS.FieldByName('CIDNOME').ProviderFlags := [pfHidden];
    if UpdateKind = ukInsert then
        DeltaDS.FieldByName('PARCOD').NewValue := VarToFloat(ExecSQL('SELECT MAX(PARCOD) FROM TPARTICIPANTE')) + 1;
end;

procedure TServerMethods.DSPProdutoBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
    DeltaDS.FieldByName('PARNOME').ProviderFlags := [pfHidden];
    if UpdateKind = ukInsert then
        DeltaDS.FieldByName('PROCODIGO').NewValue := VarToFloat(ExecSQL('SELECT MAX(PROCODIGO) FROM TPRODUTO')) + 1;
end;

procedure TServerMethods.DSPTarefaBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
    {DeltaDS.FieldByName('PARNOME').ProviderFlags := [pfHidden];
    DeltaDS.FieldByName('GRUNOM').ProviderFlags := [pfHidden];}

    if UpdateKind = ukInsert then
        DeltaDS.FieldByName('TARCODIGO').NewValue := VarToFloat(ExecSQL('SELECT MAX(TARCODIGO) FROM TTAREFA')) + 1;
end;

function TServerMethods.EchoString(Value: string): string;
begin
  Result := Value + '1';
end;

function TServerMethods.ExecSQL(ASql: String): Variant;
begin
    QExec.SQL.Text := ASql;
    QExec.Open;
    Result := QExec.Fields[0].AsVariant;
    QExec.Close;
end;

procedure TServerMethods.ExecSQL(ASql: String; AFecha: Boolean);
begin
    QExec.SQL.Text := ASql;
    try
       QExec.ExecSql;
    except
       on E: Exception do
           FServer.MemoErros.Lines.Add(E.Message + #13 + ASql);
    end;
    if AFecha then
       QExec.Close;
end;

function TServerMethods.RetornaPercentual: Double;
var Total: Double;
begin
    QExec.SQL.Text := 'SELECT SUM(TARPONTOS1) FROM TTAREFA ';
    QExec.Open;
    Total := QExec.Fields[0].AsFloat;
    QExec.Close;
    QExec.SQL.Text := 'SELECT SUM(TARPONTOS) FROM TTAREFA';
    QExec.Open;
    if Total > 0 then
        Result := Trunc((QExec.Fields[0].AsFloat * 100) / Total)
    else
        Result := 0;
end;

procedure TServerMethods.RetornaTarefas(Tipo: Integer);
const WHERE : String = ' WHERE TARDATAHORAENTREGUE IS ';
begin
    with QTarefa do
    begin
        Close;
        CommandText := 'SELECT * FROM TTAREFA ';
        case Tipo of
          1 : CommandText := CommandText + WHERE + ' NULL AND TARDATAHORAENTREGA > CURRENT_TIME'; //pendentes
          2 : CommandText := CommandText + WHERE + ' NOT NULL'; //entreges
          3 : CommandText := CommandText + WHERE + ' NULL AND TARDATAHORAENTREGA < CURRENT_TIME'; //perdidas
        end;
        Open;
    end;
end;

function TServerMethods.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

function TServerMethods.VarToFloat(AVariant: Variant): Double;
begin
    Result := StrToFloatDef(VarToStr(AVariant),0.00);
end;

end.

