inherited FCadBase: TFCadBase
  Left = 269
  Top = 183
  Width = 938
  Height = 471
  Caption = 'CadBase'
  OldCreateOrder = True
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object pnlInferior: TPanel
    Left = 0
    Top = 391
    Width = 922
    Height = 41
    Align = alBottom
    BorderStyle = bsSingle
    TabOrder = 0
    object Panel1: TPanel
      Left = 828
      Top = 1
      Width = 91
      Height = 37
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object btFechar: TButton
        Left = 5
        Top = 6
        Width = 75
        Height = 25
        Cancel = True
        Caption = 'Fechar'
        TabOrder = 0
        OnClick = btFecharClick
      end
    end
  end
  object pnlDados: TPanel
    Left = 300
    Top = 0
    Width = 622
    Height = 391
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object gbDetalhe: TGroupBox
      Left = 0
      Top = 46
      Width = 622
      Height = 345
      Align = alClient
      Caption = ' Detalhe '
      TabOrder = 0
    end
    object pnlTopo: TPanel
      Left = 0
      Top = 0
      Width = 622
      Height = 46
      Align = alTop
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object btNovo: TBitBtn
        Left = 8
        Top = 8
        Width = 75
        Height = 30
        Caption = 'Novo'
        TabOrder = 0
        OnClick = btNovoClick
      end
      object btEditar: TBitBtn
        Left = 88
        Top = 8
        Width = 75
        Height = 30
        Caption = 'Editar'
        TabOrder = 1
        OnClick = btEditarClick
      end
      object btGravar: TBitBtn
        Left = 168
        Top = 8
        Width = 75
        Height = 30
        Caption = 'Gravar'
        TabOrder = 2
        OnClick = btGravarClick
      end
      object btCancelar: TBitBtn
        Left = 248
        Top = 8
        Width = 75
        Height = 30
        Caption = 'Cancelar'
        TabOrder = 3
        OnClick = btCancelarClick
      end
      object btExcluir: TBitBtn
        Left = 328
        Top = 8
        Width = 75
        Height = 30
        Caption = 'Excluir'
        TabOrder = 4
        OnClick = btExcluirClick
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 300
    Height = 391
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 2
    object PnlPesquisa: TPanel
      Left = 0
      Top = 0
      Width = 300
      Height = 33
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object btPesquisa: TSpeedButton
        Left = 256
        Top = 6
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = btPesquisaClick
      end
      object edPesquisar: TEdit
        Left = 8
        Top = 6
        Width = 241
        Height = 19
        TabOrder = 0
        OnKeyPress = edPesquisarKeyPress
      end
    end
    object gridList: TDBGrid
      Left = 0
      Top = 33
      Width = 300
      Height = 318
      Align = alClient
      DataSource = dsEntidade
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object DBNavigator1: TDBNavigator
      Left = 0
      Top = 351
      Width = 300
      Height = 40
      DataSource = dsEntidade
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alBottom
      TabOrder = 2
    end
  end
  object dsEntidade: TDataSource
    OnStateChange = dsEntidadeStateChange
    Left = 56
    Top = 32
  end
end
