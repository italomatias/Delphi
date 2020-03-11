unit Pesq_RanK;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Cad_Padrao, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, REST.Types, Datasnap.Provider,
  REST.Response.Adapter, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, Datasnap.DBClient, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask;

type
  TFrmPesqRank = class(TFrmCadPadrao)
    qrypadraoUSUARIO: TStringField;
    qrypadraoPLANETA: TStringField;
    qrypadraoVISITAS: TIntegerField;
    cdspadraoUSUARIO: TStringField;
    cdspadraoPLANETA: TStringField;
    cdspadraoVISITAS: TIntegerField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqRank: TFrmPesqRank;

implementation

{$R *.dfm}

procedure TFrmPesqRank.FormCreate(Sender: TObject);
begin
  inherited;
  // Busca dados ao abrir a tela.
  qrypadrao.Open();
  cdspadrao.Open();
end;

end.
