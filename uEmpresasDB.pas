unit uEmpresasDB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uEntidadeBase, DB, DBClient;

type
  TEmpresasDB = class(TEntidadeBase)
    cdsid: TAutoIncField;
    cdsnome: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EmpresasDB: TEmpresasDB;

implementation

{$R *.dfm}

procedure TEmpresasDB.DataModuleCreate(Sender: TObject);
begin
  Self.tableName:= 'Empresas';
  Self.searchField:= 'nome';
  inherited;

end;

end.
