inherited CargosDB: TCargosDB
  inherited cds: TClientDataSet
    object cdsid: TAutoIncField
      FieldName = 'id'
    end
    object cdsnome: TStringField
      DisplayWidth = 30
      FieldName = 'nome'
      Size = 50
    end
  end
end
