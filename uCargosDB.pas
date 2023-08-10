unit uCargosDB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uEntidadeBase, DB, DBClient;

type
  TCargosDB = class(TEntidadeBase)
    cdsid: TAutoIncField;
    cdsnome: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CargosDB: TCargosDB;

implementation

{$R *.dfm}

procedure TCargosDB.DataModuleCreate(Sender: TObject);
begin
  Self.tableName:= 'Cargos';
  Self.searchField:= 'nome';
  inherited;

end;

end.
