program Server;

uses
  Vcl.Forms,
  UServer in 'UServer.pas' {FServer},
  UServerMethods in 'UServerMethods.pas' {ServerMethods: TDataModule},
  UServerContainer in 'UServerContainer.pas' {ServerContainer: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFServer, FServer);
  Application.CreateForm(TServerContainer, ServerContainer);
  Application.Run;
end.

