inherited FrmListPlanetas: TFrmListPlanetas
  Caption = 'Listar Planetas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dbnPadrao: TDBNavigator
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Hints.Strings = ()
  end
  inherited pgbpadrao: TProgressBar
    Visible = False
  end
  inherited btnImportar: TButton
    Visible = False
  end
end
