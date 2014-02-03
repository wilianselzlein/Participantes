unit UServer;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls;

type
  TFServer = class(TForm)
    lblCabecalho: TLabel;
    lblConexao1: TLabel;
    lblData1: TLabel;
    lblHora1: TLabel;
    lblData2: TLabel;
    lblHora2: TLabel;
    lblConexao2: TLabel;
    btnDerrubar: TSpeedButton;
    Timer1: TTimer;
    PageControl1: TPageControl;
    TabLog: TTabSheet;
    TabSheet2: TTabSheet;
    MemoErros: TMemo;
    Memo1: TMemo;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDerrubarClick(Sender: TObject);
  private
    { Private declarations }
    PConn: Integer;
  public
    { Public declarations }
    Procedure CriaConexao;StdCall;
    Procedure FechaConexao;StdCall;
  end;

var
  FServer: TFServer;

implementation

{$R *.dfm}

procedure TFServer.CriaConexao;
begin
    PConn := PConn + 1;
end;

procedure TFServer.FechaConexao;
begin
    PConn := PConn - 1;
end;

procedure TFServer.Timer1Timer(Sender: TObject);
begin
    lblConexao2.Caption := FormatFloat('000',PConn);
    lblHora2.Caption := TimeToStr(Time);
    lblData2.Caption := DateToStr(Date);
end;

procedure TFServer.FormCreate(Sender: TObject);
begin
    PConn := 0;
    PageControl1.ActivePageIndex := 0;
end;

procedure TFServer.btnDerrubarClick(Sender: TObject);
begin
    Application.Terminate;
end;

end.

