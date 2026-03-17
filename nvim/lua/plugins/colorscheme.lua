return {
  -- add oldworld
  { "dgox16/oldworld.nvim", lazy = false, priority = 10000 },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "oldworld",
    },
  },
}
