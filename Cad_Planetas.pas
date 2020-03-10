unit Cad_Planetas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Cad_Padrao, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, REST.Types,
  REST.Response.Adapter, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, Datasnap.DBClient, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, System.UITypes, Datasnap.Provider ;

type
  TFrmImportaPlanetas = class(TFrmCadPadrao)
    procedure btnImportarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmImportaPlanetas: TFrmImportaPlanetas;

implementation

{$R *.dfm}

procedure TFrmImportaPlanetas.btnImportarClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja importar os dados do Web Service ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    // Chama função do Pai.
    Importa_Resgistros('planets');
  end;
end;

procedure TFrmImportaPlanetas.FormCreate(Sender: TObject);
begin
  inherited;
  // Chama função do Pai.
  Exiberegistros('planets');
end;

end.
