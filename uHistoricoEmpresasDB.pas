unit uHistoricoEmpresasDB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uEntidadeBase, DB, DBClient, uCargosDB, uEmpresasDB;

type
  THistoricoEmpresasDB = class(TEntidadeBase)
    cdsid: TAutoIncField;
    cdsid_pessoa: TIntegerField;
    cdsid_cargo: TIntegerField;
    cdsid_empresa: TIntegerField;
    cdsdata_admissao: TDateField;
    cdscargo: TStringField;
    cdsempresa: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    cargos: TCargosDB;
    empresas: TEmpresasDB;
  public
    { Public declarations }
  end;

var
  HistoricoEmpresasDB: THistoricoEmpresasDB;

implementation

{$R *.dfm}

procedure THistoricoEmpresasDB.DataModuleCreate(Sender: TObject);
begin
  Self.tableName:= 'historico_empresas';
  Self.searchField:= 'id_pessoa';
  //cria os datasets de relacionamento com os campos lookup
  cargos:= TCargosDB.Create(Self);
  cargos.open;
  empresas:= TEmpresasDB.Create(Self);
  empresas.open;
  //configura os campos lookup do dataset
  cdscargo.FieldKind:= fkLookup;
  cdscargo.KeyFields:= 'id_cargo';
  cdscargo.LookupDataSet:= cargos.cds;
  cdscargo.LookupKeyFields:= 'id';
  cdscargo.LookupResultField:= 'nome';

  cdsempresa.FieldKind:= fkLookup;
  cdsempresa.KeyFields:= 'id_empresa';
  cdsempresa.LookupDataSet:= empresas.cds;
  cdsempresa.LookupKeyFields:= 'id';
  cdsempresa.LookupResultField:= 'nome';
  inherited;

end;

end.
