unit uCadEmpresas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadBase, Mask, DBCtrls, StdCtrls, DB, Grids, DBGrids, Buttons,
  ExtCtrls;

type
  TFCadEmpresas = class(TFCadBase)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadEmpresas: TFCadEmpresas;

implementation

uses uEmpresasDB;

{$R *.dfm}

procedure TFCadEmpresas.FormCreate(Sender: TObject);
begin
  Self.entidadeDB:= TEmpresasDB.Create(Self);
  inherited;

end;

end.
