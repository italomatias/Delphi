program Desafio;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {FrmPrincipal},
  Cad_Padrao in 'Cad_Padrao.pas' {FrmCadPadrao},
  Cad_Planetas in 'Cad_Planetas.pas' {FrmImportaPlanetas},
  Cad_Pessoas in 'Cad_Pessoas.pas' {FrmImportaPessoas},
  Cad_Visitas in 'Cad_Visitas.pas' {FrmCadastrarVisitas},
  Pesq_RanK in 'Pesq_RanK.pas' {FrmPesqRank},
  List_Planetas in 'List_Planetas.pas' {FrmListPlanetas},
  List_Visitas in 'List_Visitas.pas' {FRmListarVisitas},
  Conect in 'Conect.pas' {FrmConect};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmConect, FrmConect);
  Application.Run;
end.
