-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jj", "<Esc>", { noremap = true, silent = true })
vim.opt.clipboard = "unnamedplus"

vim.keymap.set("n", "ya", "ggvG$y", { desc = "Yank entire buffer (yank all)" })
vim.keymap.set("n", "U", "<C-r>", { noremap = true, silent = true, desc = "Redo" })

-- Cycle to next window with leader + Tab
vim.keymap.set("n", "<leader><Tab>", "<C-w>w", { desc = "Next window" })

-- Buffer navigation with Shift + arrow keys
vim.keymap.set("n", "<S-Left>", ":bprevious<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<S-Right>", ":bnext<CR>", { desc = "Next buffer" })
