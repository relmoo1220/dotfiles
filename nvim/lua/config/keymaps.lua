-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jj", "<Esc>", { noremap = true, silent = true })

vim.keymap.set("n", "ya", function()
  vim.cmd("silent! %y+")
end, { desc = "Yank entire buffer to system clipboard" })

vim.keymap.set("n", "r", "<C-r>", { noremap = true, silent = true, desc = "Redo" })
vim.keymap.set("n", "R", "<Nop>", { noremap = true, silent = true, desc = "Unmap Replace" })
vim.keymap.set("n", "U", "<C-u>", { noremap = true, silent = true, desc = "Half Page Up" })
vim.keymap.set("n", "D", "<C-d>", { noremap = true, silent = true, desc = "Half Page Down" })

-- Cycle to next window with leader + Tab
vim.keymap.set("n", "<leader><Tab>", "<C-w>w", { desc = "Next window" })

-- Buffer navigation with Shift + arrow keys
vim.keymap.set("n", "<S-Left>", ":bprevious<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<S-Right>", ":bnext<CR>", { desc = "Next buffer" })

vim.keymap.set("n", "<leader>w", "<cmd>w<CR>")
vim.keymap.set("n", "<leader>W", "<cmd>wa<CR>")
vim.keymap.set("n", "<leader>q", "<cmd>bd<CR>", { desc = "Close buffer" })
