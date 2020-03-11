inherited FrmImportaPessoas: TFrmImportaPessoas
  Caption = 'Importar e Editar Pessoas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    Visible = False
  end
  inherited dbnPadrao: TDBNavigator
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbEdit]
    Hints.Strings = ()
  end
  inherited pgbpadrao: TProgressBar
    Width = 680
    ExplicitWidth = 680
  end
  inherited btnImportar: TButton
    OnClick = btnImportarClick
  end
  inherited edtpaginacao: TEdit
    Visible = False
  end
end
