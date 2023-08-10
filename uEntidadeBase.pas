unit uEntidadeBase;

interface

uses
  SysUtils, Classes, DB, DBClient;

type
  TEntidadeBase = class(TDataModule)
    cds: TClientDataSet;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure find(filtro: string);
  public
    { Public declarations }
    tableName: string;
    searchField: string;

    procedure open;
    procedure append;
    procedure edit;
    procedure post;
    procedure cancel;
    procedure delete;
    procedure refresh;

    procedure findString(valor: string);
    procedure findInt(valor: Integer);
  end;

var
  EntidadeBase: TEntidadeBase;

implementation

{$R *.dfm}

procedure TEntidadeBase.DataModuleCreate(Sender: TObject);
begin
  if tableName = '' then raise Exception.Create('Atenção desenvolvedor: Faltou definir o tableName na entidade ' + self.Name);
  //if searchField = '' then raise Exception.Create('Atenção desenvolvedor: Faltou definir os campos de pesquisa na entidade ' + self.Name);

  //Self.open;
end;

procedure TEntidadeBase.cdsAfterPost(DataSet: TDataSet);
begin
  cds.SaveToFile;
end;

procedure TEntidadeBase.cancel;
begin
  Self.cds.Cancel;
end;

procedure TEntidadeBase.delete;
begin
  Self.cds.Delete;
end;

procedure TEntidadeBase.edit;
begin
  Self.cds.Edit;
end;

procedure TEntidadeBase.open;
begin
  cds.FileName:= 'db\' + tableName + '.xml';
  if FileExists(cds.FileName) then
  begin
    cds.LoadFromFile;
  end
  else
  begin
    cds.CreateDataSet();
  end;
end;

procedure TEntidadeBase.post;
begin
  Self.cds.Post;
end;

procedure TEntidadeBase.refresh;
begin

end;

procedure TEntidadeBase.find(filtro: string);
begin
  if (filtro = '') then
  begin
    Self.cds.Filtered:= false;
  end
  else
  begin
    Self.cds.Filtered:= false;
    Self.cds.Filter:= filtro;
    Self.cds.Filtered:= true;
  end;
end;

procedure TEntidadeBase.findInt(valor: Integer);
var
  filtro: string;
begin
  if (Self.searchField <> '') then
  begin
    filtro:= Self.searchField + ' = ' + IntToStr(valor);
    Self.find(filtro);
  end
  else
    Self.find('');
end;

procedure TEntidadeBase.findString(valor: string);
var
  filtro: string;
begin
  if (valor <> '') and (Self.searchField <> '') then
  begin
    filtro:= 'UPPER(' + Self.searchField + ') LIKE ''%' + UpperCase(valor) + '%''';
    Self.find(filtro);
  end
  else
    Self.find('');
end;

procedure TEntidadeBase.append;
begin
  Self.cds.Append;
end;

end.


















































