object DmEscola: TDmEscola
  OldCreateOrder = False
  Height = 267
  Width = 466
  object fdqAluno: TFDQuery
    Connection = DM.FDConnectionDBEscola
    SQL.Strings = (
      'select * from aluno')
    Left = 48
    Top = 38
  end
  object fdqTurma: TFDQuery
    Connection = DM.FDConnectionDBEscola
    SQL.Strings = (
      'select * from turma')
    Left = 48
    Top = 110
  end
  object FDStanStorageBinLink1: TFDStanStorageBinLink
    Left = 48
    Top = 172
  end
  object fdqAgenda: TFDQuery
    CachedUpdates = True
    Connection = DM.FDConnectionDBEscola
    SQL.Strings = (
      'select * from agenda'
      'order by data')
    Left = 120
    Top = 38
  end
  object fdqAgendaAluno: TFDQuery
    CachedUpdates = True
    Connection = DM.FDConnectionDBEscola
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'select * from agenda_aluno'#13#10#10)
    Left = 202
    Top = 40
  end
  object fdqAgendaTurma: TFDQuery
    CachedUpdates = True
    Connection = DM.FDConnectionDBEscola
    SQL.Strings = (
      'select * from agenda_turma '#13#10#10)
    Left = 290
    Top = 40
  end
end
