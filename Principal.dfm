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
      Top = 56
      Width = 169
      Height = 65
      Caption = 'Importar / Editar Planetas'
      TabOrder = 0
      OnClick = Btn_Importar_Editar_PlanetasClick
    end
    object Btn_Importar_Editar_Pessoas: TButton
      Left = 40
      Top = 207
      Width = 169
      Height = 65
      Caption = 'Importar / Editar Pessoas'
      TabOrder = 1
      OnClick = Btn_Importar_Editar_PessoasClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 328
    Top = 48
    Width = 249
    Height = 345
    Caption = 'Cadastrar e Rank'
    TabOrder = 1
    object Btn_Cadastrar_Visitas: TButton
      Left = 48
      Top = 56
      Width = 169
      Height = 65
      Caption = 'Cadastrar Visitas'
      TabOrder = 0
      OnClick = Btn_Cadastrar_VisitasClick
    end
    object Btn_Cadastrar_Ranks: TButton
      Left = 48
      Top = 207
      Width = 169
      Height = 65
      Caption = 'Rank de Visitas'
      TabOrder = 1
      OnClick = Btn_Cadastrar_RanksClick
    end
  end
  object GroupBox3: TGroupBox
    Left = 608
    Top = 48
    Width = 249
    Height = 345
    Caption = 'Listar Visitas e Planetas'
    TabOrder = 2
    object BtnListarVisitas: TButton
      Left = 48
      Top = 56
      Width = 169
      Height = 65
      Caption = 'Listar Visitas'
      TabOrder = 0
      OnClick = BtnListarVisitasClick
    end
    object BtnListarPlanetas: TButton
      Left = 48
      Top = 207
      Width = 169
      Height = 65
      Caption = 'Listar Planetas'
      TabOrder = 1
      OnClick = BtnListarPlanetasClick
    end
  end
end
