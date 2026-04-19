return {
  "saghen/blink.cmp",
  opts = {

    -- Completion Behavior
    completion = {
      -- Disable Ghost Text (inline preview)
      ghost_text = {
        enabled = false,
      },

      -- Ensure the menu shows up as you type (default is true, but explicit is safe)
      menu = {
        auto_show = true,
      },

      -- Prevents automatic insertion of text before you select it
      list = {
        selection = {
          preselect = false, -- Don't auto-highlight the first item
          auto_insert = false, -- Don't insert text into buffer until accepted
        },
      },
    },

    -- Keymaps
    keymap = {
      ["<Tab>"] = { "select_and_accept", "fallback" },
      ["<CR>"] = { "fallback" },
      ["<Esc>"] = { "cancel", "fallback" },
    },
  },
}
