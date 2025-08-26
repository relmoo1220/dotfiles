-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jj", "<Esc>", { noremap = true, silent = true })
vim.opt.clipboard = "unnamedplus"

vim.keymap.set("n", "ya", "ggvG$y", { desc = "Yank entire buffer (yank all)" })
