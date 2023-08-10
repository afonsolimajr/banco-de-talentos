unit uPessoasDB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uEntidadeBase, DB, DBClient, uHistoricoEmpresasDB;

type
  TPessoasDB = class(TEntidadeBase)
    cdsid: TAutoIncField;
    cdsnome: TStringField;
    cdsdata_nascimento: TDateField;
    cdstelefone: TStringField;
    cdsemail: TStringField;
    ds: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure dsDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    historico: THistoricoEmpresasDB;
  end;

var
  PessoasDB: TPessoasDB;

implementation

{$R *.dfm}

procedure TPessoasDB.DataModuleCreate(Sender: TObject);
begin
  Self.tableName:= 'pessoas';
  Self.searchField:= 'nome';

  Self.historico:= THistoricoEmpresasDB.Create(Self);
  inherited;
  ds.DataSet:= Self.cds;
end;

procedure TPessoasDB.dsDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  historico.findInt(cdsid.AsInteger);
end;

end.
