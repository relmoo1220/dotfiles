# AeroSpace

Copy `aerospace.toml` to `~/.aerospace.toml`.

From the root of this repository:

```sh
cp aerospace/aerospace.toml ~/.aerospace.toml
```

`Alt` means the **Option** key on macOS. The configuration starts in the
`main` mode.

## Main-mode shortcuts

| Shortcut | Action |
| --- | --- |
| `Alt + /` | Cycle between horizontal and vertical tiling layouts |
| `Alt + ,` | Cycle between accordion layouts |
| `Alt + h` / `j` / `k` / `l` | Focus the window to the left / down / up / right |
| `Alt + Shift + h` / `j` / `k` / `l` | Move the focused window left / down / up / right |
| `Alt + -` / `=` | Decrease / increase the focused window size |
| `Alt + 1`–`9` | Switch to workspace 1–9 |
| `Alt + Shift + 1`–`9` | Move the focused window to workspace 1–9 |
| `Alt + Tab` | Switch to the previous workspace |
| `Alt + Shift + Tab` | Move the current workspace to the next monitor (wrap around) |
| `Alt + Shift + ;` | Enter service mode |

## Service-mode shortcuts

Enter service mode with `Alt + Shift + ;`. These shortcuts return to `main`
mode after running.

| Shortcut | Action |
| --- | --- |
| `Escape` | Reload the AeroSpace config |
| `r` | Flatten/reset the workspace tree |
| `f` | Toggle between floating and tiling layout |
| `Backspace` | Close all windows except the focused one |
| `Alt + Shift + h` / `j` / `k` / `l` | Join the focused window with the window to the left / down / up / right |
