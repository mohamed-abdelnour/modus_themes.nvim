local M = {}

local identity = function(t)
    return t
end

local meta = {
    __index = function(table, module)
        local f = require("modus_themes.modules." .. module)
        rawset(table, module, f)
        return f
    end,

    __call = function(self)
        identity(self.cmp)
        identity(self.fidget)
        identity(self.gitsigns)
        identity(self.health)
        identity(self.leap)
        identity(self.markdown)
        identity(self.telescope)
        identity(self.tree_sitter)
        identity(self.ts_rainbow)
        return self
    end,
}

setmetatable(M, meta)

return M
