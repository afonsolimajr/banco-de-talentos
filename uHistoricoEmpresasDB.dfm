inherited HistoricoEmpresasDB: THistoricoEmpresasDB
  OldCreateOrder = True
  Height = 323
  Width = 354
  inherited cds: TClientDataSet
    object cdsid: TAutoIncField
      FieldName = 'id'
      Visible = False
    end
    object cdsid_pessoa: TIntegerField
      FieldName = 'id_pessoa'
    end
    object cdsid_cargo: TIntegerField
      FieldName = 'id_cargo'
      Visible = False
    end
    object cdscargo: TStringField
      FieldKind = fkLookup
      FieldName = 'cargo'
      KeyFields = 'id'
      Size = 30
      Lookup = True
    end
    object cdsid_empresa: TIntegerField
      FieldName = 'id_empresa'
      Visible = False
    end
    object cdsempresa: TStringField
      FieldKind = fkLookup
      FieldName = 'empresa'
      Size = 30
      Lookup = True
    end
    object cdsdata_admissao: TDateField
      FieldName = 'data_admissao'
      EditMask = '!99/99/0099;1;_'
    end
  end
end
