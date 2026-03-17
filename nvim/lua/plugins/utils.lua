return {
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      opts.keymap = {
        preset = "super-tab",
        ["<Tab>"] = { "select_and_accept" },
        ["<S-Tab>"] = { "select_prev" },
      }

      opts.ghost_text = {
        enabled = false,
      }

      opts.completion = { autocomplete = false }
    end,
  },
}
