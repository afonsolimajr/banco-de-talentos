inherited FCadCargos: TFCadCargos
  Caption = 'Cargos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlInferior: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel2: TPanel
    inherited gbDetalhe: TGroupBox
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 8
        Height = 13
        Caption = 'id'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 64
        Width = 26
        Height = 13
        Caption = 'nome'
        FocusControl = DBEdit2
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 40
        Width = 130
        Height = 19
        DataField = 'id'
        DataSource = dsEntidade
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 80
        Width = 400
        Height = 19
        DataField = 'nome'
        DataSource = dsEntidade
        TabOrder = 1
      end
    end
  end
end
