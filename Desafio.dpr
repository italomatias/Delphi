program Desafio;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {FrmPrincipal},
  Cad_Padrao in 'Cad_Padrao.pas' {FrmCadPadrao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
