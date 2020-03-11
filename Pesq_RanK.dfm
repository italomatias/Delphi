inherited FrmPesqRank: TFrmPesqRank
  Caption = 'Listar Ranks'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dbgpadrao: TDBGrid
    Top = 4
  end
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
  inherited Conection_Firebird: TFDConnection
    Connected = True
  end
  inherited qrypadrao: TFDQuery
    SQL.Strings = (
      ''
      
        'SELECT      P.NAME AS USUARIO , W.NAME AS PLANETA ,  COUNT(W.NAM' +
        'E) as VISITAS'
      'FROM        VISITAS V'
      'INNER JOIN  PEOPLE  P ON ( P.ID = V.ID_PEOPLE )'
      'INNER JOIN  PLANETS W ON ( W.ID = V.ID_PLANET )'
      'GROUP  BY   P.NAME, W.NAME '
      'ORDER  BY   3 DESC'
      ''
      '      '
      ''
      ''
      ''
      '')
    object qrypadraoUSUARIO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Usu'#225'rio'
      DisplayWidth = 30
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object qrypadraoPLANETA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Planeta Visitado'
      DisplayWidth = 30
      FieldName = 'PLANETA'
      Origin = 'PLANETA'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qrypadraoVISITAS: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#250'mero de Visitas'
      FieldName = 'VISITAS'
      Origin = 'VISITAS'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  inherited cdspadrao: TClientDataSet
    object cdspadraoUSUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      DisplayWidth = 30
      FieldName = 'USUARIO'
      ReadOnly = True
      Size = 150
    end
    object cdspadraoPLANETA: TStringField
      DisplayLabel = 'Planeta'
      DisplayWidth = 30
      FieldName = 'PLANETA'
      ReadOnly = True
      Size = 50
    end
    object cdspadraoVISITAS: TIntegerField
      DisplayLabel = 'N'#186' de Visitas'
      FieldName = 'VISITAS'
      ReadOnly = True
    end
  end
end
