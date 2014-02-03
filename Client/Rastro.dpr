program Rastro;

uses
  MidasLib,
  Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UDataMod in 'UDataMod.pas' {Dm: TDataModule},
  UProduto in 'UProduto.pas' {FProduto},
  UGrupo in 'UGrupo.pas' {FGrupo},
  UCidade in 'UCidade.pas' {FCidade},
  UTarefa in 'UTarefa.pas' {FTarefa},
  UParticipante in 'UParticipante.pas' {FParticipante},
  UFuncoes in 'UFuncoes.pas',
  UPesqAvancada in 'UPesqAvancada.pas' {FPesqAvancada},
  UGridImagem in 'UGridImagem.pas',
  UServerMethodsClient in 'UServerMethodsClient.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Participantes';
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
