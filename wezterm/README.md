# WezTerm

Copy `wezterm.lua` to `~/.config/wezterm/wezterm.lua`.

From the root of this repository:

```sh
mkdir -p ~/.config/wezterm
cp wezterm/wezterm.lua ~/.config/wezterm/wezterm.lua
```

## Keyboard shortcuts

The leader key is **Cmd + .**. Press it, then press the key in the table within
one second.

| Shortcut | Action |
| --- | --- |
| Leader, `n` | Next tab |
| Leader, `p` | Previous tab |
| Leader, `1`–`9` | Activate tab 1–9 |
| Leader, `s` | Split the current pane vertically |
| Leader, `d` | Split the current pane horizontally |
| Leader, `h` / `j` / `k` / `l` | Move focus left / down / up / right |
| Leader, `x` | Close the current pane without confirmation |
| Leader, `m` | Pick a pane from another tab and join it into this tab, split to the right |
| Leader, `b` | Detach the current pane into its own new tab |
| Leader, `r` | Enter pane-resize mode |

While in pane-resize mode:

| Shortcut | Action |
| --- | --- |
| `H` / `J` / `K` / `L` | Resize the pane left / down / up / right by 3 cells |
| `Escape` or `Enter` | Leave pane-resize mode |

The status bar shows `TABLE: resize_pane` while pane-resize mode is active.
