unit uCadPessoas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadBase, DB, Grids, DBGrids, StdCtrls, Buttons, DBCtrls,
  ExtCtrls, Mask, uPessoasDB, uHistoricoEmpresasDB;

type
  TFCadPessoas = class(TFCadBase)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Panel4: TPanel;
    DBEdit6: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button5: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
     pessoas: TPessoasDB;
     //historico: THistoricoEmpresasDB;
  public
    { Public declarations }
  end;

var
  FCadPessoas: TFCadPessoas;

implementation

{$R *.dfm}

procedure TFCadPessoas.FormCreate(Sender: TObject);
begin
  pessoas:= TPessoasDB.Create(Self);
  Self.entidadeDB:= pessoas;
  //historico:= THistoricoEmpresasDB.Create(Self);
  inherited;
  DataSource1.DataSet:= pessoas.historico.cds;
  pessoas.historico.open;
end;

procedure TFCadPessoas.Button1Click(Sender: TObject);
begin
  inherited;
  pessoas.historico.append;
  pessoas.historico.cdsid_pessoa.asInteger:= pessoas.cdsid.asInteger;
end;

procedure TFCadPessoas.Button2Click(Sender: TObject);
begin
  inherited;
  pessoas.historico.post;
end;

procedure TFCadPessoas.Button3Click(Sender: TObject);
begin
  inherited;
  pessoas.historico.cancel;
end;

procedure TFCadPessoas.Button4Click(Sender: TObject);
begin
  inherited;
  pessoas.historico.delete;
end;

procedure TFCadPessoas.Button5Click(Sender: TObject);
begin
  inherited;
  pessoas.historico.edit;
end;

end.
