# Neovim (LazyVim) keyboard shortcuts

`<leader>` is Space.

## My own maps (`lua/config/keymaps.lua`, `lua/plugins/oil.lua`)

| Keys | Mode | Action |
|---|---|---|
| `jj` | insert | Escape |
| `ya` | normal | Yank whole buffer to system clipboard |
| `r` | normal | Redo |
| `U` / `D` | normal, visual | Half page up / down |
| `<leader><Tab>` | normal | Next window |
| `<S-Left>` / `<S-Right>` | normal | Previous / next buffer |
| `<leader>w` / `<leader>W` | normal | Save file / save all |
| `<leader>q` | normal | Close buffer |
| `<leader>d` | normal | Go to definition |
| `<leader>b` | normal | Go back (tag stack) |
| `<leader>e` / `<leader>E` | normal | Oil in current dir / parent dir |

Disabled: `R`, `<C-]>`, `<C-t>`.

### Inside Oil (default keymaps are turned off)

| Keys | Action |
|---|---|
| `<CR>` | Open file / folder |
| `-` | Parent directory |
| `_` | Jump to cwd |
| `q` | Close Oil |

## LazyVim defaults I use

| Keys | Action |
|---|---|
| `<leader>,` or `<leader>fb` | Pick from open buffers |
| `<leader>fB` | Buffers incl. hidden |
| `<leader><space>` or `<leader>ff` | Find files |
| `<leader>/` | Grep project |
| `<leader>sb` | Search in current buffer |
| `<leader>-` | Split below |
| `<leader>\|` | Split right |
| `<leader>wd` | Close window |
| `<C-w>v` / `<C-w>s` | Vertical / horizontal split (Vim built-in) |
| `<C-/>` | Floating terminal |
| `gd` | Go to definition |
| `<C-o>` | Jump back (Vim built-in) |
| `]]` / `[[` | Next / previous reference of word under cursor (needs LSP) |
| `<A-n>` / `<A-p>` | Same, next / previous reference |
