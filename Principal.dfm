object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Desafio Otimizy - Italo Reis'
  ClientHeight = 459
  ClientWidth = 900
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 48
    Top = 48
    Width = 249
    Height = 345
    Caption = 'Importar e Editar'
    TabOrder = 0
    object Btn_Importar_Editar_Planetas: TButton
      Left = 40
      Top = 80
      Width = 169
      Height = 65
      Caption = 'Importar / Editar Planetas'
      TabOrder = 0
      OnClick = Btn_Importar_Editar_PlanetasClick
    end
    object Button1: TButton
      Left = 40
      Top = 191
      Width = 169
      Height = 65
      Caption = 'Importar / Editar Pessoas'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
end
