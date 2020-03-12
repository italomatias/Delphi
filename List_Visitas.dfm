inherited FRmListarVisitas: TFRmListarVisitas
  Caption = 'Listar Visitas'
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
  inherited qrypadrao: TFDQuery
    SQL.Strings = (
      ''
      'SELECT      P.NAME AS USUARIO , W.NAME AS PLANETA '
      'FROM        VISITAS V'
      'INNER JOIN  PEOPLE  P ON ( P.ID = V.ID_PEOPLE )'
      'INNER JOIN  PLANETS W ON ( W.ID = V.ID_PLANET )'
      ''
      '')
  end
end
