inherited FCadPessoas: TFCadPessoas
  Left = 275
  Top = 179
  Width = 947
  Height = 589
  Caption = 'Pessoas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlInferior: TPanel
    Top = 509
    Width = 931
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
    inherited Panel1: TPanel
      Left = 837
    end
  end
  inherited pnlDados: TPanel
    Width = 631
    Height = 509
    inherited gbDetalhe: TGroupBox
      Width = 631
      Height = 463
      Caption = ''
      object GroupBox1: TGroupBox
        Left = 1
        Top = 14
        Width = 629
        Height = 235
        Align = alTop
        Caption = ' Pessoa '
        TabOrder = 0
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
        object Label3: TLabel
          Left = 16
          Top = 104
          Width = 81
          Height = 13
          Caption = 'data_nascimento'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 16
          Top = 144
          Width = 38
          Height = 13
          Caption = 'telefone'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 16
          Top = 184
          Width = 24
          Height = 13
          Caption = 'email'
          FocusControl = DBEdit5
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
        object DBEdit3: TDBEdit
          Left = 16
          Top = 120
          Width = 130
          Height = 19
          DataField = 'data_nascimento'
          DataSource = dsEntidade
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 16
          Top = 160
          Width = 260
          Height = 19
          DataField = 'telefone'
          DataSource = dsEntidade
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 16
          Top = 200
          Width = 400
          Height = 19
          DataField = 'email'
          DataSource = dsEntidade
          TabOrder = 4
        end
      end
      object GroupBox2: TGroupBox
        Left = 1
        Top = 249
        Width = 629
        Height = 213
        Align = alClient
        Caption = ' Hist'#243'rico de Empresas '
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 1
          Top = 14
          Width = 627
          Height = 104
          Align = alClient
          DataSource = DataSource1
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
        object Panel4: TPanel
          Left = 1
          Top = 118
          Width = 627
          Height = 94
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object Label6: TLabel
            Left = 8
            Top = 8
            Width = 28
            Height = 13
            Caption = 'Cargo'
          end
          object Label7: TLabel
            Left = 208
            Top = 8
            Width = 41
            Height = 13
            Caption = 'Empresa'
          end
          object Label8: TLabel
            Left = 408
            Top = 8
            Width = 45
            Height = 13
            Caption = 'Admiss'#227'o'
          end
          object DBEdit6: TDBEdit
            Left = 408
            Top = 24
            Width = 121
            Height = 19
            DataField = 'data_admissao'
            DataSource = DataSource1
            TabOrder = 2
          end
          object Button1: TButton
            Left = 8
            Top = 56
            Width = 75
            Height = 25
            Caption = 'Novo'
            TabOrder = 3
            OnClick = Button1Click
          end
          object Button2: TButton
            Left = 184
            Top = 56
            Width = 75
            Height = 25
            Caption = 'Gravar'
            TabOrder = 5
            OnClick = Button2Click
          end
          object Button3: TButton
            Left = 272
            Top = 56
            Width = 75
            Height = 25
            Caption = 'Cancelar'
            TabOrder = 6
            OnClick = Button3Click
          end
          object Button4: TButton
            Left = 360
            Top = 56
            Width = 75
            Height = 25
            Caption = 'Excluir'
            TabOrder = 7
            OnClick = Button4Click
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 8
            Top = 24
            Width = 193
            Height = 19
            DataField = 'cargo'
            DataSource = DataSource1
            TabOrder = 0
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 208
            Top = 24
            Width = 193
            Height = 19
            DataField = 'empresa'
            DataSource = DataSource1
            TabOrder = 1
          end
          object Button5: TButton
            Left = 96
            Top = 56
            Width = 75
            Height = 25
            Caption = 'Editar'
            TabOrder = 4
            OnClick = Button5Click
          end
        end
      end
    end
    inherited pnlTopo: TPanel
      Width = 631
    end
  end
  inherited Panel3: TPanel
    Height = 509
    inherited gridList: TDBGrid
      Height = 476
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Width = 200
          Visible = True
        end>
    end
  end
  object DataSource1: TDataSource
    AutoEdit = False
    Left = 461
    Top = 321
  end
end
