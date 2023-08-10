unit uCadBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBase, uEntidadeBase, StdCtrls, Grids, DBGrids, Buttons,
  DBCtrls, ExtCtrls, DB;

type
  TFCadBase = class(TFBase)
    dsEntidade: TDataSource;
    pnlInferior: TPanel;
    pnlDados: TPanel;
    Panel3: TPanel;
    PnlPesquisa: TPanel;
    edPesquisar: TEdit;
    btPesquisa: TSpeedButton;
    gridList: TDBGrid;
    gbDetalhe: TGroupBox;
    Panel1: TPanel;
    btFechar: TButton;
    pnlTopo: TPanel;
    btNovo: TBitBtn;
    btEditar: TBitBtn;
    btGravar: TBitBtn;
    btCancelar: TBitBtn;
    btExcluir: TBitBtn;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btPesquisaClick(Sender: TObject);
    procedure edPesquisarKeyPress(Sender: TObject; var Key: Char);
    procedure dsEntidadeStateChange(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
  private
    { Private declarations }
    procedure atualizaBotoes;
    procedure pesquisar;
  public
    { Public declarations }
    entidadeDB: TEntidadeBase;
  end;

var
  FCadBase: TFCadBase;

implementation

{$R *.dfm}

procedure TFCadBase.FormCreate(Sender: TObject);
begin
  dsEntidade.DataSet:= entidadeDB.cds;
  inherited;
  entidadeDB.open;
end;

procedure TFCadBase.btFecharClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFCadBase.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  Self.Width:= 900;
  Self.Height:= 600;
  inherited;
  if entidadeDB.cds.State in [dsEdit, dsInsert] then
  begin
    ShowMessage('Existem dados não salvos');
    CanClose:= false;
  end;
end;

procedure TFCadBase.btPesquisaClick(Sender: TObject);
begin
  inherited;
  Self.pesquisar;
end;

procedure TFCadBase.pesquisar;
begin
  Self.entidadeDB.findString(edPesquisar.Text);
end;

procedure TFCadBase.edPesquisarKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then Self.pesquisar;
end;

procedure TFCadBase.dsEntidadeStateChange(Sender: TObject);
begin
  inherited;
  atualizaBotoes;
end;

procedure TFCadBase.atualizaBotoes;
begin
  btNovo.Enabled:= dsEntidade.State in [dsBrowse];
  btEditar.Enabled:= dsEntidade.State in [dsBrowse];
  btGravar.Enabled:= dsEntidade.State in [dsInsert, dsEdit];
  btCancelar.Enabled:= dsEntidade.State in [dsInsert, dsEdit];
  btExcluir.Enabled:= dsEntidade.State in [dsBrowse];
end;

procedure TFCadBase.btNovoClick(Sender: TObject);
begin
  inherited;
  entidadeDB.append;
end;

procedure TFCadBase.btEditarClick(Sender: TObject);
begin
  inherited;
  entidadeDB.edit;
end;

procedure TFCadBase.btGravarClick(Sender: TObject);
begin
  inherited;
  entidadeDB.post;
end;

procedure TFCadBase.btCancelarClick(Sender: TObject);
begin
  inherited;
  entidadeDB.cancel;
end;

procedure TFCadBase.btExcluirClick(Sender: TObject);
begin
  inherited;
  entidadeDB.delete;
end;

end.
