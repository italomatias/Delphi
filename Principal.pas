unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls;

type
  TFrmPrincipal = class(TForm)
    GroupBox1: TGroupBox;
    Btn_Importar_Editar_Planetas: TButton;
    Btn_Importar_Editar_Pessoas: TButton;
    GroupBox2: TGroupBox;
    Btn_Cadastrar_Visitas: TButton;
    Btn_Cadastrar_Ranks: TButton;
    GroupBox3: TGroupBox;
    BtnListarVisitas: TButton;
    BtnListarPlanetas: TButton;
    procedure Btn_Importar_Editar_PlanetasClick(Sender: TObject);
    procedure Btn_Importar_Editar_PessoasClick(Sender: TObject);
    procedure Btn_Cadastrar_VisitasClick(Sender: TObject);
    procedure Btn_Cadastrar_RanksClick(Sender: TObject);
    procedure BtnListarPlanetasClick(Sender: TObject);
    procedure BtnListarVisitasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

Uses Cad_Planetas , Cad_Pessoas , Cad_Visitas , Pesq_RanK , List_Planetas , List_Visitas ;

{$R *.dfm}

procedure TFrmPrincipal.Btn_Importar_Editar_PlanetasClick(Sender: TObject);
var
  frm : TFrmImportaPlanetas;
begin
  frm :=   TFrmImportaPlanetas.Create(Self);
  frm.ShowModal;
  frm.Free;
end;

procedure TFrmPrincipal.BtnListarPlanetasClick(Sender: TObject);
var
  frm : TFrmListPlanetas;
begin
  frm :=   TFrmListPlanetas.Create(Self);
  frm.ShowModal;
  frm.Free;
end;

procedure TFrmPrincipal.BtnListarVisitasClick(Sender: TObject);
var
  frm : TFRmListarVisitas;
begin
  frm :=   TFRmListarVisitas.Create(Self);
  frm.ShowModal;
  frm.Free;
end;

procedure TFrmPrincipal.Btn_Cadastrar_RanksClick(Sender: TObject);
var
  frm : TFrmPesqRank;
begin
  frm :=   TFrmPesqRank.Create(Self);
  frm.ShowModal;
  frm.Free;
end;

procedure TFrmPrincipal.Btn_Cadastrar_VisitasClick(Sender: TObject);
var
  frm : TFrmCadastrarVisitas;
begin
  frm :=   TFrmCadastrarVisitas.Create(Self);
  frm.ShowModal;
  frm.Free;
end;

procedure TFrmPrincipal.Btn_Importar_Editar_PessoasClick(Sender: TObject);
var
  frm : TFrmImportaPessoas;
begin
  frm :=   TFrmImportaPessoas.Create(Self);
  frm.ShowModal;
  frm.Free;
end;

end.
