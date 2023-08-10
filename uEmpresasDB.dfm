inherited EmpresasDB: TEmpresasDB
  inherited cds: TClientDataSet
    object cdsid: TAutoIncField
      FieldName = 'id'
    end
    object cdsnome: TStringField
      FieldName = 'nome'
      Size = 50
    end
  end
end
