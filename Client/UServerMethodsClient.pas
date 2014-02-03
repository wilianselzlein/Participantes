//
// Created by the DataSnap proxy generator.
// 04/04/2013 16:38:28
//

unit UServerMethodsClient;

interface

uses Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXJSONReflect;

type
  TServerMethodsClient = class(TDSAdminClient)
  private
    FDataModuleCreateCommand: TDBXCommand;
    FDataModuleDestroyCommand: TDBXCommand;
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
    FRetornaTarefasCommand: TDBXCommand;
    FRetornaPercentualCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    procedure RetornaTarefas(Tipo: Integer);
    function RetornaPercentual: Double;
  end;

implementation

procedure TServerMethodsClient.DataModuleCreate(Sender: TObject);
begin
  if FDataModuleCreateCommand = nil then
  begin
    FDataModuleCreateCommand := FDBXConnection.CreateCommand;
    FDataModuleCreateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDataModuleCreateCommand.Text := 'TServerMethods.DataModuleCreate';
    FDataModuleCreateCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FDataModuleCreateCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FDataModuleCreateCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDataModuleCreateCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FDataModuleCreateCommand.ExecuteUpdate;
end;

procedure TServerMethodsClient.DataModuleDestroy(Sender: TObject);
begin
  if FDataModuleDestroyCommand = nil then
  begin
    FDataModuleDestroyCommand := FDBXConnection.CreateCommand;
    FDataModuleDestroyCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDataModuleDestroyCommand.Text := 'TServerMethods.DataModuleDestroy';
    FDataModuleDestroyCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FDataModuleDestroyCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FDataModuleDestroyCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDataModuleDestroyCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FDataModuleDestroyCommand.ExecuteUpdate;
end;

function TServerMethodsClient.EchoString(Value: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FDBXConnection.CreateCommand;
    FEchoStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEchoStringCommand.Text := 'TServerMethods.EchoString';
    FEchoStringCommand.Prepare;
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.ExecuteUpdate;
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethodsClient.ReverseString(Value: string): string;
begin
  if FReverseStringCommand = nil then
  begin
    FReverseStringCommand := FDBXConnection.CreateCommand;
    FReverseStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReverseStringCommand.Text := 'TServerMethods.ReverseString';
    FReverseStringCommand.Prepare;
  end;
  FReverseStringCommand.Parameters[0].Value.SetWideString(Value);
  FReverseStringCommand.ExecuteUpdate;
  Result := FReverseStringCommand.Parameters[1].Value.GetWideString;
end;

procedure TServerMethodsClient.RetornaTarefas(Tipo: Integer);
begin
  if FRetornaTarefasCommand = nil then
  begin
    FRetornaTarefasCommand := FDBXConnection.CreateCommand;
    FRetornaTarefasCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRetornaTarefasCommand.Text := 'TServerMethods.RetornaTarefas';
    FRetornaTarefasCommand.Prepare;
  end;
  FRetornaTarefasCommand.Parameters[0].Value.SetInt32(Tipo);
  FRetornaTarefasCommand.ExecuteUpdate;
end;

function TServerMethodsClient.RetornaPercentual: Double;
begin
  if FRetornaPercentualCommand = nil then
  begin
    FRetornaPercentualCommand := FDBXConnection.CreateCommand;
    FRetornaPercentualCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRetornaPercentualCommand.Text := 'TServerMethods.RetornaPercentual';
    FRetornaPercentualCommand.Prepare;
  end;
  FRetornaPercentualCommand.ExecuteUpdate;
  Result := FRetornaPercentualCommand.Parameters[0].Value.GetDouble;
end;


constructor TServerMethodsClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;


constructor TServerMethodsClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;


destructor TServerMethodsClient.Destroy;
begin
  FreeAndNil(FDataModuleCreateCommand);
  FreeAndNil(FDataModuleDestroyCommand);
  FreeAndNil(FEchoStringCommand);
  FreeAndNil(FReverseStringCommand);
  FreeAndNil(FRetornaTarefasCommand);
  FreeAndNil(FRetornaPercentualCommand);
  inherited;
end;

end.
