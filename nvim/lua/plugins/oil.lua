return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    default_file_explorer = true,
    delete_to_trash = true,
    watch_for_changes = true,
    view_options = {
      show_hidden = true,
      natural_order = true,
    },
    use_default_keymaps = false,
    keymaps = {
      ["<CR>"] = "actions.select", -- Enter to open file/folder
      ["-"] = { "actions.parent", mode = "n" }, -- Go up one dir
      ["_"] = { "actions.open_cwd", mode = "n" }, -- Jump to CWD
      ["q"] = { "actions.close", mode = "n" }, -- Close Oil
    },
  },
  keys = {
    { "<leader>e", "<cmd>Oil<cr>", desc = "Open Oil (Current Dir)" },
    { "<leader>E", "<cmd>Oil ..<cr>", desc = "Open Oil (Parent Dir)" },
  },
  -- Optional dependencies
  dependencies = { { "nvim-mini/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
}
