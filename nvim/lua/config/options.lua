-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here


local uname = vim.uv.os_uname()

-- Detect Windows (including WSL if kernel name contains "Microsoft")
local is_windows = uname.sysname == "Windows_NT" or uname.release:match("Microsoft")

if is_windows then
  vim.g.clipboard = {
    name = "WslClipboard",
    copy = {
      ["+"] = "clip.exe",
      ["*"] = "clip.exe",
    },
    paste = {
      ["+"] =
      [[powershell.exe -NoLogo -NoProfile -Command "[Console]::OutputEncoding = [System.Text.Encoding]::UTF8; [Console]::Out.Write((Get-Clipboard -Raw) -replace '`r','')"]],
      ["*"] =
      [[powershell.exe -NoLogo -NoProfile -Command "[Console]::OutputEncoding = [System.Text.Encoding]::UTF8; [Console]::Out.Write((Get-Clipboard -Raw) -replace '`r','')"]],
    },
    cache_enabled = 0,
  }
end
