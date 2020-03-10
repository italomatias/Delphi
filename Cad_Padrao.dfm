object FrmCadPadrao: TFrmCadPadrao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'FrmCadPadrao'
  ClientHeight = 575
  ClientWidth = 1006
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  DesignSize = (
    1006
    575)
  PixelsPerInch = 96
  TextHeight = 13
  object dbgpadrao: TDBGrid
    Left = -5
    Top = 0
    Width = 1003
    Height = 491
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dtspadrao
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbnPadrao: TDBNavigator
    Left = 0
    Top = 531
    Width = 1006
    Height = 44
    DataSource = dtspadrao
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates]
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = -6
    ExplicitTop = 528
    ExplicitWidth = 1207
  end
  object pgbpadrao: TProgressBar
    Left = 192
    Top = 501
    Width = 806
    Height = 17
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Max = 50
    TabOrder = 2
    ExplicitWidth = 1198
  end
  object btnImportar: TButton
    Left = 8
    Top = 497
    Width = 178
    Height = 25
    Anchors = [akLeft, akTop, akBottom]
    Caption = 'Importar'
    TabOrder = 3
  end
  object Conection_Firebird: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Mestre Italo\Desktop\BASE STAR WARS\STARWARS.F' +
        'DB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=127.0.0.1'
      'Protocol=TCPIP'
      'DriverID=FB')
    Left = 1267
    Top = 8
  end
  object dtspadrao: TDataSource
    DataSet = qrypadrao
    Left = 1355
    Top = 8
  end
  object qrypadrao: TFDQuery
    Connection = Conection_Firebird
    SQL.Strings = (
      '')
    Left = 1299
    Top = 8
  end
  object cdspadrao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsppadrao'
    Left = 1328
    Top = 8
  end
  object RestResponsePadrao: TRESTResponse
    Left = 1300
    Top = 40
  end
  object RestRequestPadrao: TRESTRequest
    Client = RestClientPadrao
    Params = <>
    Response = RestResponsePadrao
    SynchronizedEvents = False
    Left = 1269
    Top = 40
  end
  object RestClientPadrao: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    Params = <>
    Left = 1330
    Top = 40
  end
  object cdsRest: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dsppadrao'
    StoreDefs = True
    Left = 1240
    Top = 40
  end
  object RestDataSet: TRESTResponseDataSetAdapter
    Dataset = cdsRest
    FieldDefs = <>
    Response = RestResponsePadrao
    Left = 1360
    Top = 40
  end
end
