return {
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = false,
      dim_inactive = true,
      lualine_bold = true,
      -- theme's dim_inactive color equals Normal bg in dark, so force a darker one
      on_highlights = function(hl, c)
        hl.NormalNC = { fg = c.base00, bg = "#000a0d" }
        hl.LineNr = { fg = c.yellow700 } -- theme hardcodes bg here, leaving a lit strip in inactive windows
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka",
    },
  },
}
