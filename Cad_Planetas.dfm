inherited FrmImportaPlanetas: TFrmImportaPlanetas
  Caption = 'Importar e Editar Planetas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dbnPadrao: TDBNavigator
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbEdit]
    Hints.Strings = ()
    ExplicitLeft = 8
    ExplicitWidth = 1006
  end
  inherited pgbpadrao: TProgressBar
    ExplicitWidth = 806
  end
  inherited btnImportar: TButton
    OnClick = btnImportarClick
  end
end
