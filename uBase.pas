unit uBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TFBase = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBase: TFBase;

implementation

{$R *.dfm}

procedure TFBase.FormCreate(Sender: TObject);
begin
  Self.Color:= clBtnFace;
end;

end.
