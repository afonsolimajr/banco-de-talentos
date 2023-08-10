inherited EntidadeBase1: TEntidadeBase1
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
    end
    object cdstelefone: TStringField
      FieldName = 'telefone'
    end
    object cdsemail: TStringField
      FieldName = 'email'
      Size = 50
    end
  end
end
