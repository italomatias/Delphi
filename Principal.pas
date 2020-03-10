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
    Button1: TButton;
    procedure Btn_Importar_Editar_PlanetasClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

Uses Cad_Planetas , Cad_Pessoas ;

{$R *.dfm}

procedure TFrmPrincipal.Btn_Importar_Editar_PlanetasClick(Sender: TObject);
var
  frm : TFrmImportaPlanetas;
begin
  frm :=   TFrmImportaPlanetas.Create(Self);
  frm.ShowModal;
  frm.Free;
end;

procedure TFrmPrincipal.Button1Click(Sender: TObject);
var
  frm : TFrmImportaPessoas;
begin
  frm :=   TFrmImportaPessoas.Create(Self);
  frm.ShowModal;
  frm.Free;
end;

end.
