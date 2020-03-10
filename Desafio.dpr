program Desafio;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {FrmPrincipal},
  Cad_Padrao in 'Cad_Padrao.pas' {FrmCadPadrao},
  Cad_Planetas in 'Cad_Planetas.pas' {FrmImportaPlanetas},
  Cad_Pessoas in 'Cad_Pessoas.pas' {FrmImportaPessoas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
