object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Desafio Otimizy - Italo Reis'
  ClientHeight = 631
  ClientWidth = 1270
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Btn_Importar_Editar_Planetas: TButton
    Left = 512
    Top = 232
    Width = 169
    Height = 65
    Caption = 'Importar / Editar planetas'
    TabOrder = 0
    OnClick = Btn_Importar_Editar_PlanetasClick
  end
  object Button1: TButton
    Left = 512
    Top = 344
    Width = 169
    Height = 65
    Caption = 'Importar / Editar pessoas'
    TabOrder = 1
    OnClick = Button1Click
  end
end
