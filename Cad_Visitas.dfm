object FrmCadastrarVisitas: TFrmCadastrarVisitas
  Left = 0
  Top = 0
  Caption = 'Cadastro de Visitas'
  ClientHeight = 575
  ClientWidth = 881
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    881
    575)
  PixelsPerInch = 96
  TextHeight = 13
  object dbnPadrao: TDBNavigator
    Left = 0
    Top = 531
    Width = 881
    Height = 44
    DataSource = dtspadrao
    VisibleButtons = [nbInsert, nbPost, nbCancel]
    Align = alBottom
    TabOrder = 0
    ExplicitWidth = 880
  end
  object gpbPlaneta: TGroupBox
    Left = 8
    Top = 110
    Width = 865
    Height = 105
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Selecione um Planeta'
    TabOrder = 1
    object dblPlaneta: TDBLookupComboBox
      Left = 96
      Top = 51
      Width = 609
      Height = 21
      DataField = 'ID_PLANET'
      DataSource = dtspadrao
      Enabled = False
      KeyField = 'ID'
      ListField = 'NAME'
      ListFieldIndex = -1
      ListSource = dtsplaneta
      TabOrder = 0
    end
  end
  object gbpusuario: TGroupBox
    Left = 8
    Top = 270
    Width = 865
    Height = 105
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Selecione um Usu'#225'rio'
    TabOrder = 2
    object dblUsuario: TDBLookupComboBox
      Left = 96
      Top = 52
      Width = 609
      Height = 21
      DataField = 'ID_PEOPLE'
      DataSource = dtspadrao
      Enabled = False
      KeyField = 'ID'
      ListField = 'NAME'
      ListFieldIndex = -1
      ListSource = dtsUsuario
      TabOrder = 0
    end
  end
  object Conection_Firebird: TFDConnection
    Params.Strings = (
      'Database=C:\STARWARS.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=127.0.0.1'
      'Protocol=TCPIP'
      'DriverID=FB')
    Connected = True
    Left = 680
    Top = 8
  end
  object QryPadrao: TFDQuery
    BeforeInsert = QryPadraoBeforeInsert
    AfterPost = QryPadraoAfterPost
    Connection = Conection_Firebird
    SQL.Strings = (
      ''
      'SELECT ID_PLANET , ID_PEOPLE FROM VISITAS')
    Left = 717
    Top = 8
  end
  object dtspadrao: TDataSource
    DataSet = QryPadrao
    Left = 755
    Top = 8
  end
  object dtsplaneta: TDataSource
    DataSet = QryPlaneta
    Left = 755
    Top = 64
  end
  object QryPlaneta: TFDQuery
    Connection = Conection_Firebird
    SQL.Strings = (
      'SELECT ID , NAME FROM PLANETS')
    Left = 717
    Top = 56
    object QryPlanetaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryPlanetaNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 50
    end
  end
  object QryUsuario: TFDQuery
    Connection = Conection_Firebird
    SQL.Strings = (
      ''
      'SELECT ID , NAME FROM PEOPLE')
    Left = 797
    Top = 8
    object QryUsuarioID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryUsuarioNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 150
    end
  end
  object dtsUsuario: TDataSource
    DataSet = QryUsuario
    Left = 835
    Top = 8
  end
end
