return function(self)
    self.CmpItemAbbrDeprecatedDefault = { fg = self.fg_alt, strikethrough = true }
    -- Linked
    self.CmpItemAbbrDefault = { link = "Normal" }
    self.CmpItemAbbrMatchDefault = { link = "Title" }
    self.CmpItemAbbrMatchFuzzyDefault = { link = "Boolean" }
    self.CmpItemKindClass = { link = "Type" }
    self.CmpItemKindColor = { link = "Label" }
    self.CmpItemKindConstant = { link = "Constant" }
    self.CmpItemKindConstructor = { link = "Type" }
    self.CmpItemKindDefault = { link = "Title" }
    self.CmpItemKindEnum = { link = "Type" }
    self.CmpItemKindEnumMember = { link = "Constant" }
    self.CmpItemKindEvent = { link = "DiagnosticHint" }
    self.CmpItemKindField = { link = "Identifier" }
    self.CmpItemKindFile = { link = "Directory" }
    self.CmpItemKindFolder = { link = "Directory" }
    self.CmpItemKindFunction = { link = "Function" }
    self.CmpItemKindInterface = { link = "Type" }
    self.CmpItemKindKeyword = { link = "Keyword" }
    self.CmpItemKindMethod = { link = "Function" }
    self.CmpItemKindModule = { link = "Include" }
    self.CmpItemKindOperator = { link = "Operator" }
    self.CmpItemKindProperty = { link = "Identifier" }
    self.CmpItemKindReference = { link = "Operator" }
    self.CmpItemKindSnippet = { link = "DiagnosticWarn" }
    self.CmpItemKindStruct = { link = "Type" }
    self.CmpItemKindText = { link = "Title" }
    self.CmpItemKindTypeParameter = { link = "Identifier" }
    self.CmpItemKindUnit = { link = "Number" }
    self.CmpItemKindValue = { link = "Constant" }
    self.CmpItemKindVariable = { link = "Identifier" }
    self.CmpItemMenuDefault = { link = "Pmenu" }
end
