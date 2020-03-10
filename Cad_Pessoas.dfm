inherited FrmImportaPessoas: TFrmImportaPessoas
  Caption = 'Importar e Editar Pessoas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dbnPadrao: TDBNavigator
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbEdit]
    Hints.Strings = ()
    ExplicitLeft = 0
    ExplicitTop = 531
    ExplicitWidth = 1171
  end
  inherited pgbpadrao: TProgressBar
    ExplicitWidth = 971
  end
  inherited btnImportar: TButton
    OnClick = btnImportarClick
  end
end
