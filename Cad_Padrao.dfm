object FrmCadPadrao: TFrmCadPadrao
  Left = 0
  Top = 0
  Caption = 'FrmCadPadrao'
  ClientHeight = 568
  ClientWidth = 1246
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dbgpadrao: TDBGrid
    Left = 8
    Top = 8
    Width = 753
    Height = 502
    DataSource = dtspadrao
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbnPadrao: TDBNavigator
    Left = 8
    Top = 516
    Width = 744
    Height = 44
    VisibleButtons = [nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    TabOrder = 1
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
    Connected = True
    Left = 803
    Top = 24
  end
  object dtspadrao: TDataSource
    DataSet = qrypadrao
    Left = 803
    Top = 192
  end
  object qrypadrao: TFDQuery
    Connection = Conection_Firebird
    SQL.Strings = (
      '')
    Left = 803
    Top = 80
  end
  object cdspadrao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsppadrao'
    Left = 800
    Top = 136
  end
  object RestResponsePadrao: TRESTResponse
    Left = 896
    Top = 8
  end
  object RestRequestPadrao: TRESTRequest
    Client = RestClientPadrao
    Params = <>
    Response = RestResponsePadrao
    SynchronizedEvents = False
    Left = 896
    Top = 64
  end
  object RestClientPadrao: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    Params = <>
    Left = 896
    Top = 120
  end
  object cdsRest: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dsppadrao'
    StoreDefs = True
    Left = 896
    Top = 240
  end
  object RestDataSet: TRESTResponseDataSetAdapter
    Dataset = cdsRest
    FieldDefs = <>
    Response = RestResponsePadrao
    Left = 896
    Top = 184
  end
end