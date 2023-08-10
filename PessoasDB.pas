unit PessoasDB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uEntidadeBase, DB, DBClient;

type
  TEntidadeBase1 = class(TEntidadeBase)
    cdsid: TAutoIncField;
    cdsnome: TStringField;
    cdsdata_nascimento: TDateField;
    cdstelefone: TStringField;
    cdsemail: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EntidadeBase1: TEntidadeBase1;

implementation

{$R *.dfm}

procedure TEntidadeBase1.DataModuleCreate(Sender: TObject);
begin
  Self.tableName:= 'pessoas';
  inherited;

end;

end.
