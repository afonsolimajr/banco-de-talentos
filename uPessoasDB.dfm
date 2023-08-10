inherited PessoasDB: TPessoasDB
  OldCreateOrder = True
  inherited cds: TClientDataSet
    object cdsid: TAutoIncField
      FieldName = 'id'
    end
    object cdsnome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object cdsdata_nascimento: TDateField
      FieldName = 'data_nascimento'
      EditMask = '!99/99/00;1;_'
    end
    object cdstelefone: TStringField
      FieldName = 'telefone'
      EditMask = '!\(99\)00000-0000;1;_'
    end
    object cdsemail: TStringField
      FieldName = 'email'
      Size = 50
    end
  end
  object ds: TDataSource
    OnDataChange = dsDataChange
    Left = 120
    Top = 88
  end
end
