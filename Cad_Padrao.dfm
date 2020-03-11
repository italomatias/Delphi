object FrmCadPadrao: TFrmCadPadrao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'FrmCadPadrao'
  ClientHeight = 575
  ClientWidth = 880
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
    880
    575)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 692
    Top = 502
    Width = 53
    Height = 13
    Caption = 'Pagina'#231#227'o:'
  end
  object dbgpadrao: TDBGrid
    Left = -5
    Top = 0
    Width = 877
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
    Width = 880
    Height = 44
    DataSource = dtspadrao
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates]
    Align = alBottom
    TabOrder = 1
  end
  object pgbpadrao: TProgressBar
    Left = 192
    Top = 501
    Width = 494
    Height = 17
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Max = 50
    TabOrder = 2
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
  object edtpaginacao: TEdit
    Left = 751
    Top = 499
    Width = 121
    Height = 21
    TabOrder = 4
    OnChange = edtpaginacaoChange
    OnKeyPress = edtpaginacaoKeyPress
  end
  object Conection_Firebird: TFDConnection
    Params.Strings = (
      'Database=C:\STARWARS.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=127.0.0.1'
      'Protocol=TCPIP'
      'DriverID=FB')
    Left = 656
    Top = 32
  end
  object dtspadrao: TDataSource
    DataSet = cdspadrao
    Left = 771
    Top = 32
  end
  object qrypadrao: TFDQuery
    Connection = Conection_Firebird
    SQL.Strings = (
      '')
    Left = 685
    Top = 32
  end
  object cdspadrao: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    ProviderName = 'dsppadrao'
    Left = 744
    Top = 32
  end
  object RestResponsePadrao: TRESTResponse
    Left = 716
    Top = 64
  end
  object RestRequestPadrao: TRESTRequest
    Client = RestClientPadrao
    Params = <>
    Response = RestResponsePadrao
    SynchronizedEvents = False
    Left = 685
    Top = 64
  end
  object RestClientPadrao: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    Params = <>
    Left = 746
    Top = 64
  end
  object cdsRest: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dsppadrao'
    StoreDefs = True
    Left = 656
    Top = 64
  end
  object RestDataSet: TRESTResponseDataSetAdapter
    Dataset = cdsRest
    FieldDefs = <>
    Response = RestResponsePadrao
    Left = 776
    Top = 64
  end
  object dspPadrao: TDataSetProvider
    DataSet = qrypadrao
    Left = 715
    Top = 32
  end
end
