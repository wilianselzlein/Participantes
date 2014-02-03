unit UDataMod;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect, SConnect, Windows, IniFiles, Forms,
  Variants, Dialogs, DateUtils, Graphics, ImgList, Controls, DBCtrls,
  Data.DBXDataSnap, IndyPeerImpl, Data.DBXCommon, Datasnap.DSConnect,
  Data.SqlExpr, Data.FMTBcd;

type
  TDm = class(TDataModule)
    CDSParticipante: TClientDataSet;
    CDSParticipantePARCOD: TIntegerField;
    CDSParticipantePARNOME: TStringField;
    CDSParticipantePARCOMPLEMENTO: TStringField;
    CDSParticipantePARENDERECO: TStringField;
    CDSParticipantePARBAIRRO: TStringField;
    CDSParticipantePARFONE1: TStringField;
    CDSParticipantePARFONE2: TStringField;
    CDSParticipantePARFONE3: TStringField;
    CDSParticipantePARFONE4: TStringField;
    CDSParticipantePAROBS: TStringField;
    CDSParticipantePARLOCALIZACAO: TStringField;
    CDSParticipantePARCIDADE: TIntegerField;
    CDSParticipantePARFOTO: TBlobField;
    CDSCidade: TClientDataSet;
    CDSAssociacao: TClientDataSet;
    CDSProduto: TClientDataSet;
    CDSCidadeCIDCODIGO: TIntegerField;
    CDSCidadeCIDNOME: TStringField;
    CDSCidadeCIDESTADO: TStringField;
    CDSAssociacaoASSCODIGO: TIntegerField;
    CDSAssociacaoASSPARTICIPANTE: TIntegerField;
    CDSAssociacaoASSPRODUTO: TIntegerField;
    CDSAssociacaoASSOBS: TStringField;
    CDSProdutoPROCODIGO: TIntegerField;
    CDSProdutoPRONOME: TStringField;
    CDSProdutoPROREFERENCIA: TStringField;
    CDSProdutoPROPRECO: TFMTBCDField;
    CDSProdutoPROQUANTIDADE: TIntegerField;
    CDSProdutoPROFOTO: TBlobField;
    CDSProdutoPROCOMPLEMENTO: TStringField;
    CDSProdutoPROPESO: TFMTBCDField;
    CDSProdutoPROTAMANHO: TStringField;
    CDSProdutoPROOBS: TStringField;
    CDSParticipanteCIDNOME: TStringField;
    CDSProdutoQAssociacao: TDataSetField;
    CDSAssociacaoNomeParticipante: TStringField;
    CDSParticipanteTMax: TAggregateField;
    CDSCidadeTMax: TAggregateField;
    CDSAssociacaoTMax: TAggregateField;
    CDSProdutoTMax: TAggregateField;
    CDSGrupo: TClientDataSet;
    CDSGrupoGRUCODIGO: TIntegerField;
    CDSGrupoGRUNOM: TStringField;
    CDSGrupoGRUCOR: TStringField;
    CDSGrupoGRUPESO: TFMTBCDField;
    CDSGrupoGRURESPONSAVEL: TIntegerField;
    CDSGrupoTMAX: TAggregateField;
    CDSGrupoGRUNOMERESP: TStringField;
    CDSParticipantePARGRUPO: TIntegerField;
    CDSTarefa: TClientDataSet;
    CDSTarefaTMax: TAggregateField;
    CDSTarefaTARCODIGO: TIntegerField;
    CDSTarefaTARNOME: TStringField;
    CDSTarefaTARDESCRICAO: TStringField;
    CDSTarefaTAREDICAO: TIntegerField;
    CDSTarefaTARPONTOS: TIntegerField;
    CDSTarefaTARPARTICIPANTE: TIntegerField;
    CDSTarefaTARARQUIVO: TStringField;
    CDSTarefaTARPREVISAO: TStringField;
    CDSTarefaTARGRUPO: TIntegerField;
    OpenDialog1: TOpenDialog;
    CDSArqs: TClientDataSet;
    CDSArqsTARCODIGO: TIntegerField;
    CDSArqsTARNOME: TStringField;
    CDSArqsTARPONTOS: TIntegerField;
    CDSArqsTARARQUIVO: TStringField;
    DSArqs: TDataSource;
    CDSArqsTARGRUPO: TIntegerField;
    CDSArqsTARDESCRICAO: TStringField;
    CDSArqsTAREDICAO: TIntegerField;
    CDSArqsTARPARTICIPANTE: TIntegerField;
    CDSArqsTARPREVISAO: TStringField;
    CDSEntregues: TClientDataSet;
    DSEntregues: TDataSource;
    CDSAEntregar: TClientDataSet;
    CDSEntreguesTARCODIGO: TIntegerField;
    CDSEntreguesTARNOME: TStringField;
    CDSEntreguesTARDESCRICAO: TStringField;
    CDSEntreguesTAREDICAO: TIntegerField;
    CDSEntreguesTARPONTOS: TIntegerField;
    CDSEntreguesTARPARTICIPANTE: TIntegerField;
    CDSEntreguesTARARQUIVO: TStringField;
    CDSEntreguesTARPREVISAO: TStringField;
    CDSEntreguesTARGRUPO: TIntegerField;
    CDSAEntregarTARCODIGO: TIntegerField;
    CDSAEntregarTARNOME: TStringField;
    CDSAEntregarTARDESCRICAO: TStringField;
    CDSAEntregarTAREDICAO: TIntegerField;
    CDSAEntregarTARPONTOS: TIntegerField;
    CDSAEntregarTARPARTICIPANTE: TIntegerField;
    CDSAEntregarTARARQUIVO: TStringField;
    CDSAEntregarTARPREVISAO: TStringField;
    CDSAEntregarTARGRUPO: TIntegerField;
    CDSEntreguesGRUCODIGO: TIntegerField;
    CDSEntreguesGRUNOM: TStringField;
    CDSEntreguesGRUCOR: TStringField;
    CDSEntreguesGRUPESO: TFMTBCDField;
    CDSEntreguesGRURESPONSAVEL: TIntegerField;
    CDSAEntregarGRUCODIGO: TIntegerField;
    CDSAEntregarGRUNOM: TStringField;
    CDSAEntregarGRUCOR: TStringField;
    CDSAEntregarGRUPESO: TFMTBCDField;
    CDSAEntregarGRURESPONSAVEL: TIntegerField;
    ImageList1: TImageList;
    CDSParticipantePARGRUPO1: TIntegerField;
    CDSParticipantePARCPF: TStringField;
    CDSParticipantePARCNPJ: TStringField;
    CDSParticipantePARIDENTIDADE: TStringField;
    CDSTarefaTARPONTOS1: TIntegerField;
    CDSTarefaTARNUMERO: TIntegerField;
    ImageList2: TImageList;
    CDSConsulta: TClientDataSet;
    CDSProdutoPROCONTATO: TStringField;
    CDSProdutoPROPROPRIETARIO: TIntegerField;
    CDSProdutoPARNOME: TStringField;
    SQLConnection: TSQLConnection;
    DSProviderConnection: TDSProviderConnection;
    MtdRetornaPercentual: TSqlServerMethod;
    MtdRetornaTarefas: TSqlServerMethod;
    CDSTarefaTARDATAHORACADASTRO: TSQLTimeStampField;
    CDSTarefaTARDATAHORAENTREGA: TSQLTimeStampField;
    CDSTarefaTARDATAHORAENTREGUE: TSQLTimeStampField;
    CDSArqsTARPONTOS1: TIntegerField;
    CDSArqsTARNUMERO: TIntegerField;
    CDSArqsTARDATAHORACADASTRO: TSQLTimeStampField;
    CDSArqsTARDATAHORAENTREGA: TSQLTimeStampField;
    CDSArqsTARDATAHORAENTREGUE: TSQLTimeStampField;
    CDSEntreguesTARPONTOS1: TIntegerField;
    CDSEntreguesTARNUMERO: TIntegerField;
    CDSEntreguesTARDATAHORACADASTRO: TSQLTimeStampField;
    CDSEntreguesTARDATAHORAENTREGA: TSQLTimeStampField;
    CDSEntreguesTARDATAHORAENTREGUE: TSQLTimeStampField;
    CDSAEntregarTARPONTOS1: TIntegerField;
    CDSAEntregarTARNUMERO: TIntegerField;
    CDSAEntregarTARDATAHORACADASTRO: TSQLTimeStampField;
    CDSAEntregarTARDATAHORAENTREGA: TSQLTimeStampField;
    CDSAEntregarTARDATAHORAENTREGUE: TSQLTimeStampField;
    CDSTarefaTCOUNT: TAggregateField;
    procedure CDSParticipanteAfterPost(DataSet: TDataSet);
    procedure CDSParticipanteAfterDelete(DataSet: TDataSet);
    procedure CDSCidadeAfterDelete(DataSet: TDataSet);
    procedure CDSCidadeAfterPost(DataSet: TDataSet);
    procedure CDSAssociacaoAfterPost(DataSet: TDataSet);
    procedure CDSAssociacaoAfterDelete(DataSet: TDataSet);
    procedure CDSProdutoAfterDelete(DataSet: TDataSet);
    procedure CDSProdutoAfterPost(DataSet: TDataSet);
    procedure CDSCidadeNewRecord(DataSet: TDataSet);
    procedure CDSParticipanteNewRecord(DataSet: TDataSet);
    procedure CDSProdutoNewRecord(DataSet: TDataSet);
    procedure CDSAssociacaoNewRecord(DataSet: TDataSet);
    procedure CDSAssociacaoBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure CDSProdutoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure CDSGrupoNewRecord(DataSet: TDataSet);
    procedure CDSGrupoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure CDSGrupoAfterPost(DataSet: TDataSet);
    procedure CDSGrupoAfterDelete(DataSet: TDataSet);
    procedure CDSTarefaAfterDelete(DataSet: TDataSet);
    procedure CDSTarefaAfterPost(DataSet: TDataSet);
    procedure CDSTarefaNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dm: TDm;

implementation

uses UFuncoes, UGrupo;

{$R *.dfm}

procedure TDm.CDSParticipanteAfterPost(DataSet: TDataSet);
begin
    CDSParticipante.ApplyUpdates(0);
end;

procedure TDm.CDSParticipanteAfterDelete(DataSet: TDataSet);
begin
    CDSParticipante.ApplyUpdates(0);
end;

procedure TDm.CDSCidadeAfterDelete(DataSet: TDataSet);
begin
    CDSCidade.ApplyUpdates(0);
end;

procedure TDm.CDSCidadeAfterPost(DataSet: TDataSet);
begin
    CDSCidade.ApplyUpdates(0);
end;

procedure TDm.CDSAssociacaoAfterPost(DataSet: TDataSet);
begin
    CDSAssociacao.ApplyUpdates(0);
end;

procedure TDm.CDSAssociacaoAfterDelete(DataSet: TDataSet);
begin
    CDSAssociacao.ApplyUpdates(0);
end;

procedure TDm.CDSProdutoAfterDelete(DataSet: TDataSet);
begin
    CDSProduto.ApplyUpdates(0);
end;

procedure TDm.CDSProdutoAfterPost(DataSet: TDataSet);
begin
    CDSProduto.ApplyUpdates(0);
end;

procedure TDm.CDSCidadeNewRecord(DataSet: TDataSet);
begin
    Dm.CDSCidadeCIDCODIGO.AsInteger := StrToIntDef(VarToStr(DM.CDSCidadeTMax.Value),0)+1;
end;

procedure TDm.CDSGrupoAfterDelete(DataSet: TDataSet);
begin
    CDSGrupo.ApplyUpdates(0);
end;

procedure TDm.CDSGrupoAfterPost(DataSet: TDataSet);
begin
    CDSGrupo.ApplyUpdates(0);
end;

procedure TDm.CDSGrupoNewRecord(DataSet: TDataSet);
begin
    Dm.CDSGrupoGRUCODIGO.AsInteger := StrToIntDef(VarToStr(DM.CDSGrupoTMAx.Value),0)+1;
end;

procedure TDm.CDSGrupoReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
    showmessage('Erro:' + E.Message);
end;

procedure TDm.CDSParticipanteNewRecord(DataSet: TDataSet);
begin
    Dm.CDSParticipantePARCOD.AsInteger := StrToIntDef(VarToStr(DM.CDSParticipanteTMax.Value),0)+1;
end;

procedure TDm.CDSProdutoNewRecord(DataSet: TDataSet);
begin
    Dm.CDSProdutoPROCODIGO.AsInteger := StrToIntDef(VarToStr(DM.CDSProdutoTMax.Value),0)+1;
end;

procedure TDm.CDSProdutoReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
    showmessage('Erro:' + E.Message);
end;

procedure TDm.CDSTarefaAfterDelete(DataSet: TDataSet);
begin
    CDSTarefa.ApplyUpdates(0);
end;

procedure TDm.CDSTarefaAfterPost(DataSet: TDataSet);
begin
    CDSTarefa.ApplyUpdates(0);
end;

procedure TDm.CDSTarefaNewRecord(DataSet: TDataSet);
begin
    Dm.CDSTarefaTARCODIGO.AsInteger := StrToIntDef(VarToStr(DM.CDSTarefaTMax.Value),0)+1;
    Dm.CDSTarefaTARDATAHORACADASTRO.AsDateTime := Now;
//    Dm.CDSTarefaTARHORAENTREGA.AsDateTime := TimeOf(Now);
    Dm.CDSTarefaTARPREVISAO.AsString := 'N';
    Dm.CDSTarefaTAREDICAO.AsInteger := YearOf(Now);
    Dm.CDSTarefaTARPONTOS.AsInteger := 0;
    Dm.CDSTarefaTARPONTOS1.AsInteger := 0;
//    Dm.CDSTarefaTARSTATUS.AsString := 'Aberta';
end;

procedure TDm.CDSAssociacaoNewRecord(DataSet: TDataSet);
begin
    Dm.CDSAssociacaoASSCODIGO.AsInteger := StrToIntDef(VarToStr(DM.CDSAssociacaoTMax.Value),1);
end;

procedure TDm.CDSAssociacaoBeforePost(DataSet: TDataSet);
begin
    CDSAssociacaoASSPRODUTO.AsInteger := CDSProdutoPROCODIGO.AsInteger;
end;

procedure TDm.DataModuleCreate(Sender: TObject);
const
  Arq: String = 'Client.ini';
var
  loINI: TIniFile;
begin
  if not FileExists(ExtractFilePath(Application.ExeName) + Arq) then
      raise Exception.Create('Necessário o arquivo ' + Arq + ' com as propriedades Server e Ip definidas.');
  loINI := TIniFile.Create(ExtractFilePath(Application.ExeName) + Arq);
  try
    SQLConnection.Params.Values['HostName'] := loINI.ReadString('SERVER', 'IP', '');
    SQLConnection.Params.Values['Port'] := InTToStr(StrToIntDef(loINI.ReadString('SERVER', 'PORTA', ''), 212));
  finally
    FreeAndNil(loINI);
  end;
  try
    SQLConnection.Connected := True;
  except
    on E: Exception do
      showmessage(E.Message);
  end;
end;

end.

