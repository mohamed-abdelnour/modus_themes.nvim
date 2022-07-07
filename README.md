# Introduction

A [Neovim][neovim] port of Protesilaos Stavrou's [Modus Themes][modus_themes]
for [GNU Emacs][emacs].

# Examples

- Modus Operandi with the default configuration:

```lua
require("modus_themes").operandi()
```

- Modus Vivendi with two included modules, `cmp` and `gitsigns`, and a custom
  module.

```lua
local themes = require("modus_themes")
local modules = require("modus_themes.modules")
themes.vivendi({
    modules = {
        modules.cmp,
        modules.gitsigns,
        function(self)
            self.HIGHLIGHT_GROUP = { fg = themes.palette.red_intense }
        end,
    },
})
```

[neovim]: https://neovim.io/
[modus_themes]: https://protesilaos.com/emacs/modus-themes
[emacs]: https://www.gnu.org/software/emacs/

<!-- TODO: add documentation and instructions -->
