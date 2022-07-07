return function(self)
    self.LeapLabelPrimary = { bg = self.red_intense_bg, fg = self.fg_main, underline = true }
    self.LeapLabelSecondary = { bg = self.cyan_subtle_bg, fg = self.fg_dim, underline = true }
    self.LeapMatch = { fg = self.red_alt_other, underline = true }
    -- Linked
    self.LeapBackdrop = { link = "None" }
end
