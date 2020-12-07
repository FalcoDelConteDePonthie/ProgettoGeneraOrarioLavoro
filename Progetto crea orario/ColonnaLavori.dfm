object ColonneDeiGiorni: TColonneDeiGiorni
  Left = 0
  Top = 0
  Width = 825
  Height = 588
  TabOrder = 0
  object TabellaOrari: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'Giorni'
        DataType = ftInteger
      end
      item
        Name = 'Dipendenti'
        DataType = ftString
        Size = 25
      end>
    IndexDefs = <>
    DetailFields = 'Dipendenti;Giorni'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 28
    Top = 20
    object TabellaOrariGiorni: TIntegerField
      FieldName = 'Giorni'
    end
    object TabellaOrariDipendenti: TStringField
      FieldName = 'Dipendenti'
      Size = 25
    end
  end
end
