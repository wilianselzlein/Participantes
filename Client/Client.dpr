program Client;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UDataMod in 'UDataMod.pas' {Dm: TDataModule},
  UProduto in 'UProduto.pas' {FProduto},
  UGrupo in 'UGrupo.pas' {FGrupo},
  UTarefa in 'UTarefa.pas' {FTarefa},
  UCidade in 'UCidade.pas' {FCidade},
  Ufuncoes in 'Ufuncoes.pas',
  UParticipante in 'UParticipante.pas' {FParticipante},
  UPesqAvancada in 'UPesqAvancada.pas' {FPesqAvancada};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Participantes';
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
