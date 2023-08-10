object EntidadeBase: TEntidadeBase
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 1055
  Top = 283
  Height = 202
  Width = 235
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = cdsAfterPost
    Left = 40
    Top = 32
  end
end
