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
  Data.Bind.Components, Data.Bind.ObjectScope, Datasnap.Provider, Vcl.StdCtrls,
  Vcl.ComCtrls, System.UITypes, Vcl.Mask ;

type
  TFrmCadPadrao = class(TForm)
    Conection_Firebird: TFDConnection;
    dtspadrao: TDataSource;
    qrypadrao: TFDQuery;
    dbgpadrao: TDBGrid;
    dbnPadrao: TDBNavigator;
    cdspadrao: TClientDataSet;
    RestResponsePadrao: TRESTResponse;
    RestRequestPadrao: TRESTRequest;
    RestClientPadrao: TRESTClient;
    cdsRest: TClientDataSet;
    RestDataSet: TRESTResponseDataSetAdapter;
    pgbpadrao: TProgressBar;
    btnImportar: TButton;
    dspPadrao: TDataSetProvider;
    Label1: TLabel;
    edtpaginacao: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure edtpaginacaoChange(Sender: TObject);
    procedure edtpaginacaoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Importa_Resgistros(Tabela : String);
    Procedure Exiberegistros(Tabela : String);
  end;

var
  FrmCadPadrao: TFrmCadPadrao;

implementation

{$R *.dfm}

procedure TFrmCadPadrao.edtpaginacaoKeyPress(Sender: TObject; var Key: Char);
begin
  // Edt aceita apenas números.
  if ((key in ['0'..'9'] = false) and (word(key) <> vk_back)) then
    key := #0;
end;

procedure TFrmCadPadrao.Exiberegistros(Tabela: String);
begin
  // Esta função busca os dados da tabela informada por param.
  Try
    With qrypadrao do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT * FROM '+tabela);
      Open;
    end;
      cdspadrao.Close;
      cdspadrao.Open;
  except on E: EDatabaseError do
      MessageDlg('Erro ao pesquisar dados da base', mtError,  [mbOk], 0);
  end;
end;

procedure TFrmCadPadrao.FormCreate(Sender: TObject);
begin
  // Zera a barra de progresso ao abrir a tela.
  pgbpadrao.Position := 0;    
end;

procedure TFrmCadPadrao.Importa_Resgistros(Tabela : String);
var
  N_Regs, I : integer ;
  Temp   : String;
begin
    // Apenas importa se a Tabela está vazia
    Try
      Exiberegistros(tabela);

      if qrypadrao.RecordCount = 0  then
      begin
         // Infome Link para Buscar Número de Registro
        RestClientPadrao.BaseURL :=  'https://swapi.co/api/'+tabela+'/';
        RestRequestPadrao.execute;

        // Nunca mexi com este componente antes, mas consegui fazer o requisitado KKKKKK
        // Aqui ele pega a resposta do request e pega o número de registros é um pouco feio mas funciona KKKK
        Temp    := RestResponsePadrao.Content;
        N_Regs  := StrToInt(COPY( Temp , POS(':', Temp ) + 1  , (POS(',', Temp ) -  POS(':', Temp ) - 1  )));
        
         for I:=1 to N_Regs do
         begin
           pgbpadrao.Position := pgbpadrao.Position +1;
           if ((I <> 17) AND (Tabela <> 'Peolpe'))  then // Request https://swapi.co/api/people/17/ Não existe no WebService
           begin
             RestClientPadrao.BaseURL :=  'https://swapi.co/api/'+Tabela+'/'+inttostr(I)+'/';
             RestRequestPadrao.execute;
           end;

           if ((I <> 17) AND (Tabela = 'people')) then
           begin

             qrypadrao.Close;
             qrypadrao.SQL.Clear;

             qrypadrao.Sql.Add('INSERT INTO PEOPLE ( ID , NAME , HEIGHT , MASS , HAIR_COLOR , SKIN_COLOR , EYE_COLOR , BIRTH_YEAR , GENDER ) ');
             qrypadrao.SQL.Add('VALUES ( ' + INTTOSTR(I) );
             qrypadrao.Sql.Add(' ,  '      + quotedstr(cdsrest.FieldByName('name').Value));
             qrypadrao.Sql.Add(' ,  '      + quotedstr(cdsrest.FieldByName('height').Value));
             qrypadrao.Sql.Add(' ,  '      + quotedstr(cdsrest.FieldByName('mass').Value));
             qrypadrao.Sql.Add(' ,  '      + quotedstr(cdsrest.FieldByName('hair_color').Value));
             qrypadrao.Sql.Add(' ,  '      + quotedstr(cdsrest.FieldByName('skin_color').Value));
             qrypadrao.Sql.Add(' ,  '      + quotedstr(cdsrest.FieldByName('eye_color').Value));
             qrypadrao.Sql.Add(' ,  '      + quotedstr(cdsrest.FieldByName('birth_year').Value));
             qrypadrao.Sql.Add(' ,  '      + quotedstr(cdsrest.FieldByName('gender').Value));
             qrypadrao.Sql.Add(' )  ' );
             qrypadrao.ExecSQL;

           end;

           if Tabela = 'planets' then
           begin

             qrypadrao.Close;
             qrypadrao.SQL.Clear;

             qrypadrao.Sql.Add('INSERT INTO PLANETS ( ID , NAME , ROTATION_PERIOD , ORBITAL_PERIOD , DIAMETER , CLIMATE , GRAVITY , TERRAIN , SURFACE_WATER , POPOLATION ) ');
             qrypadrao.SQL.Add('VALUES ( ' + INTTOSTR(I) );
             qrypadrao.Sql.Add(' ,  '      + quotedstr(cdsrest.FieldByName('name').Value));
             qrypadrao.Sql.Add(' ,  '      + quotedstr(cdsrest.FieldByName('rotation_period').Value));
             qrypadrao.Sql.Add(' ,  '      + quotedstr(cdsrest.FieldByName('orbital_period').Value));
             qrypadrao.Sql.Add(' ,  '      + quotedstr(cdsrest.FieldByName('diameter').Value));
             qrypadrao.Sql.Add(' ,  '      + quotedstr(cdsrest.FieldByName('climate').Value));
             qrypadrao.Sql.Add(' ,  '      + quotedstr(cdsrest.FieldByName('gravity').Value));
             qrypadrao.Sql.Add(' ,  '      + quotedstr(cdsrest.FieldByName('terrain').Value));
             qrypadrao.Sql.Add(' ,  '      + quotedstr(cdsrest.FieldByName('surface_water').Value));
             qrypadrao.Sql.Add(' ,  '      + quotedstr(cdsrest.FieldByName('population').Value));
             qrypadrao.Sql.Add(' )  ' );
             qrypadrao.ExecSQL;

             { Verificar o motivo de o param nao funcionar
             qrypadrao.Sql.Add('INSERT INTO PLANETS VALUES ( :P_ID , :P_NAME , :P_ROTATION_PERIOD , :P_ORBITALPERIOD , :P_DIAMETER , :P_CLIMATE , :P_GRAVITY , ');
             qrypadrao.Sql.Add('                             :P_TERRAIN  , :P_SURFACE_WATER , :P_POPOLATION ');

             qrypadrao.ParamByName('P_ID').Value              := I;
             qrypadrao.ParamByName('P_NAME').Value            := cdsrest.FieldByName('name').Value;
             qrypadrao.ParamByName('P_ROTATION_PERIOD').Value := cdsrest.FieldByName('rotation_period').Value;
             qrypadrao.ParamByName('P_ORBITALPERIOD').Value   := cdsrest.FieldByName('orbital_period').Value;
             qrypadrao.ParamByName('P_DIAMETER').Value        := cdsrest.FieldByName('diameter').Value;
             qrypadrao.ParamByName('P_CLIMATE').Value         := cdsrest.FieldByName('climate').Value;
             qrypadrao.ParamByName('P_GRAVITY').Value         := cdsrest.FieldByName('gravity').Value;
             qrypadrao.ParamByName('P_TERRAIN').Value         := cdsrest.FieldByName('terrain').Value;
             qrypadrao.ParamByName('P_SURFACE_WATER').Value   := cdsrest.FieldByName('surface_water').Value;
             qrypadrao.ParamByName('P_POPOLATION').Value      := cdsrest.FieldByName('population').Value;
             qrypadrao.Open;}
           end;
         end;
         // Tudo OK Exibe registros Importados.
         MessageDlg('Registros importados com sucesso.', mtInformation,  [mbOk], 0);
         Exiberegistros(tabela);
      end
      else
      begin
        // Já existe dados na tabela, poderia fazer uma função que atualiza apenas os que não tem mas falta tempo KKKKK
        MessageDlg('Não é necessário importar dados para a tabela,Pois a tabela já contém registros.', mtInformation,  [mbOk], 0);
      end;

    except on E: EDatabaseError do
      // Deu algum problema no SQL :( 
      MessageDlg('Erro ao pesquisar dados da base', mtError,  [mbOk], 0);
    end;

end;

procedure TFrmCadPadrao.edtpaginacaoChange(Sender: TObject);
begin
  if edtpaginacao.Text <> EmptyStr  then
  begin
    cdspadrao.Close;
    cdspadrao.PacketRecords := strtoint(edtpaginacao.Text);
    cdspadrao.Open;
  end;
end;

end.
