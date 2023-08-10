unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, ComCtrls;

type
  TFMain = class(TForm)
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Configuraes1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Cadastros1: TMenuItem;
    Pessoas1: TMenuItem;
    Empresas1: TMenuItem;
    Cargos1: TMenuItem;
    Image1: TImage;
    StatusBar1: TStatusBar;
    Image2: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Configuraes1Click(Sender: TObject);
    procedure Pessoas1Click(Sender: TObject);
    procedure Empresas1Click(Sender: TObject);
    procedure Cargos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;

implementation

uses uCadPessoas, uCadEmpresas, uCadCargos;

{$R *.dfm}

procedure TFMain.FormCreate(Sender: TObject);
begin
  image1.Align:= alNone;
end;

procedure TFMain.FormResize(Sender: TObject);
begin
  Image1.Left:= Self.ClientWidth - Image1.Width;
  Image1.Top:= Self.ClientHeight - Image1.Height - 20;
end;

procedure TFMain.Sair1Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TFMain.Configuraes1Click(Sender: TObject);
begin
  ShowMessage('Tela de configurações em breve');
end;

procedure TFMain.Pessoas1Click(Sender: TObject);
var
  f: TFCadPessoas;
begin
  f:= TFCadPessoas.Create(Self);
  f.ShowModal;
  FreeAndNil(f);
end;

procedure TFMain.Empresas1Click(Sender: TObject);
var
  f: TFCadEmpresas;
begin
  f:= TFCadEmpresas.Create(Self);
  f.ShowModal;
  FreeAndNil(f);
end;

procedure TFMain.Cargos1Click(Sender: TObject);
var
  f: TFCadCargos;
begin
  f:= TFCadCargos.Create(Self);
  f.ShowModal;
  FreeAndNil(f);
end;

end.
