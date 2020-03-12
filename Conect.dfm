object FrmConect: TFrmConect
  Left = 0
  Top = 0
  Caption = 'FrmConect'
  ClientHeight = 324
  ClientWidth = 414
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
    Left = 186
    Top = 144
  end
end
