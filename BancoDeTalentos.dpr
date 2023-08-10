program BancoDeTalentos;

uses
  Forms,
  uEntidadeBase in 'uEntidadeBase.pas' {EntidadeBase: TDataModule},
  Main in 'Main.pas' {FMain},
  uPessoasDB in 'uPessoasDB.pas' {PessoasDB: TDataModule},
  uBase in 'uBase.pas' {FBase},
  uCadBase in 'uCadBase.pas' {FCadBase},
  uCadPessoas in 'uCadPessoas.pas' {FCadPessoas},
  uEmpresasDB in 'uEmpresasDB.pas' {EmpresasDB: TDataModule},
  uCadEmpresas in 'uCadEmpresas.pas' {FCadEmpresas},
  uCargosDB in 'uCargosDB.pas' {CargosDB: TDataModule},
  uCadCargos in 'uCadCargos.pas' {FCadCargos},
  uHistoricoEmpresasDB in 'uHistoricoEmpresasDB.pas' {HistoricoEmpresasDB: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.Title:= 'Banco de Talentos';
  Application.CreateForm(TFMain, FMain);
  Application.Run;
end.
