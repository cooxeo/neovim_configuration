return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night", -- You can also try "moon" for a slightly lighter effect
      transparent = true, -- Enable transparency
      styles = {
        sidebars = "transparent",
        floats = "transparent",
        comments = { italic = false },
        keywords = { bold = true, italic = false },
        functions = { bold = true, italic = false },
        variables = { italic = false },
      },
      on_highlights = function(highlights, colors)
        -- Remove dark background for highlighted elements
        highlights.Normal = { bg = "NONE" }
        highlights.NormalNC = { bg = "NONE" }
        highlights.EndOfBuffer = { bg = "NONE" }
        highlights.CursorLine = { bg = "NONE" } -- No dark cursor line
        highlights.Visual = { bg = colors.blue, fg = colors.bg } -- Lighten visual selection
        highlights.Search = { bg = colors.orange, fg = colors.bg } -- Highlight search
        highlights.LineNr = { fg = colors.comment } -- Make line numbers lighter
        highlights.CursorLineNr = { fg = colors.blue, bold = true } -- Highlight current line number
        highlights.SignColumn = { bg = "NONE" }
        highlights.StatusLine = { bg = "NONE" }
        highlights.StatusLineNC = { bg = "NONE" }
        highlights.Pmenu = { bg = "NONE" } -- No dark popup menu
        highlights.PmenuSel = { bg = colors.blue, fg = colors.bg } -- Lighten selected popup item
      end,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
