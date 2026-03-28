return {
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      opts.ghost_text = {
        enabled = false,
      }

      opts.completion = { autocomplete = false }

      opts.keymap = {
        ["<Tab>"] = { "select_and_accept", "fallback" }, -- Tab accepts completion if menu open
        ["<CR>"] = { "fallback" }, -- Enter always inserts newline
        ["<Esc>"] = { "cancel", "fallback" }, -- Esc closes menu if open, else normal
      }
    end,
  },
}
