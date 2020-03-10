inherited FrmImportaPlanetas: TFrmImportaPlanetas
  Caption = 'Importar e Editar Planetas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dbnPadrao: TDBNavigator
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbEdit, nbApplyUpdates, nbCancelUpdates]
    Hints.Strings = ()
    ExplicitWidth = 880
  end
  inherited pgbpadrao: TProgressBar
    ExplicitWidth = 680
  end
  inherited btnImportar: TButton
    OnClick = btnImportarClick
  end
end
