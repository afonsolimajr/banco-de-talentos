unit uCadCargos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadBase, DB, Grids, DBGrids, StdCtrls, Buttons, DBCtrls,
  ExtCtrls, Mask;

type
  TFCadCargos = class(TFCadBase)
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
  FCadCargos: TFCadCargos;

implementation

uses uCargosDB;

{$R *.dfm}

procedure TFCadCargos.FormCreate(Sender: TObject);
begin
  Self.entidadeDB:= TCargosDB.Create(Self);
  inherited;

end;

end.
