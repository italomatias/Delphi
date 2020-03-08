unit Cad_Padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.DBClient, Vcl.ExtCtrls,
  Vcl.DBCtrls, REST.Types, REST.Response.Adapter, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope ;

type
  TFrmCadPadrao = class(TForm)
    Conection_Firebird: TFDConnection;
    dtspadrao: TDataSource;
    qrypadrao: TFDQuery;
    qrypadraoID: TIntegerField;
    qrypadraoTEXTO: TStringField;
    dbgpadrao: TDBGrid;
    dbnPadrao: TDBNavigator;
    cdspadrao: TClientDataSet;
    RestResponsePadrao: TRESTResponse;
    RestRequestPadrao: TRESTRequest;
    RestClientPadrao: TRESTClient;
    cdsRest: TClientDataSet;
    cdsRestcount: TWideStringField;
    cdsRestnext: TWideStringField;
    cdsRestprevious: TWideStringField;
    cdsRestresults: TWideStringField;
    cdsRestname: TWideStringField;
    cdsRestrotation_period: TWideStringField;
    cdsRestorbital_period: TWideStringField;
    cdsRestdiameter: TWideStringField;
    cdsRestclimate: TWideStringField;
    cdsRestgravity: TWideStringField;
    cdsRestterrain: TWideStringField;
    cdsRestsurface_water: TWideStringField;
    cdsRestpopulation: TWideStringField;
    cdsRestresidents: TWideStringField;
    cdsRestfilms: TWideStringField;
    cdsRestcreated: TWideStringField;
    cdsRestedited: TWideStringField;
    cdsResturl: TWideStringField;
    RestDataSet: TRESTResponseDataSetAdapter;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Procedure Importa_Resgistros;
  public
    { Public declarations }
  end;

var
  FrmCadPadrao: TFrmCadPadrao;

implementation

{$R *.dfm}

procedure TFrmCadPadrao.FormCreate(Sender: TObject);
begin
  Importa_Resgistros;
end;

procedure TFrmCadPadrao.Importa_Resgistros;
var
  N_Regs, I : integer ;
  Temp   : String;
begin
    // Infome Link para Buscar Número de Registro
    RestClientPadrao.BaseURL :=  'https://swapi.co/api/planets';
    RestRequestPadrao.execute;

    // Nunca mexi com este componente antes, mas consegui fazer o requisitado KKKKKK
    // Aqui ele pega a resposta do request e pega o número de registros é um pouco feio mas funciona KKKK
    Temp    := RestResponsePadrao.Content;
    N_Regs  := StrToInt(COPY( Temp , POS(':', Temp ) + 1  , (POS(',', Temp ) -  POS(':', Temp ) - 1  )));

    // Apenas importa se a Tabela está vazia

    Try
      With qrypadrao do
      begin
        Close;
        Sql.Add('SELECT * FROM PLANETS');
        Open;
      end;

      if qrypadrao.RecordCount = 0  then
      begin
         for I:=1 to N_Regs do
         begin
           RestClientPadrao.BaseURL :=  'https://swapi.co/api/planets/'+inttostr(I);
           RestRequestPadrao.execute;
           cdsRest.Close;
           CdsRest.Open;
         end;
      end;


    except on E: EDatabaseError do
      MessageDlg('Erro ao Pesquisar dados da base', mtError,  [mbOk], 0);
    end;


end;

end.
