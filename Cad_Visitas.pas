unit Cad_Visitas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Vcl.DBCtrls, Vcl.StdCtrls, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ExtCtrls, System.UITypes;

type
  TFrmCadastrarVisitas = class(TForm)
    Conection_Firebird: TFDConnection;
    QryPadrao: TFDQuery;
    dtspadrao: TDataSource;
    dtsplaneta: TDataSource;
    QryPlaneta: TFDQuery;
    QryUsuario: TFDQuery;
    dtsUsuario: TDataSource;
    dbnPadrao: TDBNavigator;
    QryUsuarioID: TIntegerField;
    QryUsuarioNAME: TStringField;
    QryPlanetaID: TIntegerField;
    QryPlanetaNAME: TStringField;
    gpbPlaneta: TGroupBox;
    gbpusuario: TGroupBox;
    dblPlaneta: TDBLookupComboBox;
    dblUsuario: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure QryPadraoBeforeInsert(DataSet: TDataSet);
    procedure QryPadraoAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastrarVisitas: TFrmCadastrarVisitas;

implementation

{$R *.dfm}

procedure TFrmCadastrarVisitas.FormCreate(Sender: TObject);
begin
  // Abre componentes para executar SQL e buscar os dados.
  QryPadrao.Open();
  QryPlaneta.Open();
  QryUsuario.Open();

  // Inicia com Combobox Vazio
  dblPlaneta.ListFieldIndex := -1 ;
  dblUsuario.ListFieldIndex := -1 ;
end;

procedure TFrmCadastrarVisitas.QryPadraoAfterPost(DataSet: TDataSet);
begin
  // Limpa os combobox apos inserção e desabilita.
  dblPlaneta.ListFieldIndex := -1 ;
  dblUsuario.ListFieldIndex := -1 ;
  dblPlaneta.Enabled := False;
  dblUsuario.Enabled := False;
   MessageDlg('Cadastro de visita registrado com sucesso.', mtInformation,  [mbOk], 0);
end;

procedure TFrmCadastrarVisitas.QryPadraoBeforeInsert(DataSet: TDataSet);
begin
  // Habilita os combobox apenas se for inserir dados.
  dblPlaneta.Enabled := True;
  dblUsuario.Enabled := True;
end;

end.
