object frmPesq_Padrao: TfrmPesq_Padrao
  Left = 0
  Top = 0
  Caption = 'FrmPesqPadrao'
  ClientHeight = 575
  ClientWidth = 880
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Conection_Firebird: TFDConnection
    Params.Strings = (
      'Database=C:\STARWARS.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=127.0.0.1'
      'Protocol=TCPIP'
      'DriverID=FB')
    Left = 728
    Top = 16
  end
  object qrypadrao: TFDQuery
    Connection = Conection_Firebird
    SQL.Strings = (
      '')
    Left = 757
    Top = 16
  end
  object dspPadrao: TDataSetProvider
    DataSet = qrypadrao
    Left = 787
    Top = 16
  end
  object cdspadrao: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ProviderName = 'dsppadrao'
    Left = 816
    Top = 16
  end
  object dtspadrao: TDataSource
    DataSet = cdspadrao
    Left = 843
    Top = 16
  end
end
