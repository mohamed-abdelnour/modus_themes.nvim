return function(self)
    self.GitSignsAdd = { link = "DiagnosticSignSuccess" }
    self.GitSignsAddInline = { link = "DiffAdd" }
    self.GitSignsAddLn = { link = "DiffAdd" }
    self.GitSignsAddLnInline = { link = "DiffAdd" }
    self.GitSignsAddLnVirtLn = { link = "DiffAdd" }
    self.GitSignsAddLnVirtLnInline = { link = "DiffAdd" }
    self.GitSignsAddNr = { link = "DiffAdd" }
    self.GitSignsChange = { link = "DiagnosticSignWarn" }
    self.GitSignsChangeInline = { link = "DiffChange" }
    self.GitSignsChangeLn = { link = "DiffChange" }
    self.GitSignsChangeLnInline = { link = "DiffChange" }
    self.GitSignsChangeLnVirtLine = { link = "DiffChange" }
    self.GitSignsChangeLnVirtLineInline = { link = "DiffChange" }
    self.GitSignsChangeNr = { link = "DiffChange" }
    self.GitSignsCurrentLineBlame = { link = "NonText" }
    self.GitSignsDelete = { link = "DiagnosticSignError" }
    self.GitSignsDeleteInline = { link = "DiffDelete" }
    self.GitSignsDeleteLn = { link = "DiffDelete" }
    self.GitSignsDeleteLnInline = { link = "DiffDelete" }
    self.GitSignsDeleteLnVirtLine = { link = "DiffDelete" }
    self.GitSignsDeleteLnVirtLineInline = { link = "DiffDelete" }
    self.GitSignsDeleteNr = { link = "DiffDelete" }
end
