return {
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      opts.completion = opts.completion or {}

      -- disable ghost text (correct way in your version)
      opts.completion.menu = opts.completion.menu or {}
      opts.completion.menu.enabled = true
      opts.completion.menu.auto_show = false

      opts.keymap = {
        ["<Tab>"] = { "select_and_accept", "fallback" },
        ["<CR>"] = { "fallback" },
        ["<Esc>"] = { "cancel", "fallback" },
      }

      return opts
    end,
  },
}
