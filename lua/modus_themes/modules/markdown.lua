return function(self)
    self.markdownCode = { bg = self.bg_dim, fg = self.fg_dim }
    -- Linked
    self.markdownCodeBlock = { link = "NormalFloat" }
    self.markdownH1 = { link = "S1" }
    self.markdownH2 = { link = "S2" }
    self.markdownH3 = { link = "S3" }
    self.markdownH4 = { link = "S4" }
    self.markdownH5 = { link = "S5" }
    self.markdownH6 = { link = "S6" }
    self.markdownHeadingDelimiter = { link = "Normal" }
    self.markdownLinkText = { link = "Link" }
end
