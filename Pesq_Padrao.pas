unit Pesq_Padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmPesq_Padrao = class(TForm)
    Conection_Firebird: TFDConnection;
    qrypadrao: TFDQuery;
    dspPadrao: TDataSetProvider;
    cdspadrao: TClientDataSet;
    dtspadrao: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesq_Padrao: TfrmPesq_Padrao;

implementation

{$R *.dfm}

end.
