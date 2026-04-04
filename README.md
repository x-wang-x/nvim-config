It's just personal config for my neovim setup.It contain colorscheme, keymap, and plugins that i use.

## Keymap to remember

```

----- Picker -----
<leader> -> Space
<leader>ff -> Find file ( telescope )
<leader>fg -> File live grep ( telescope )
<leader>w or WW -> save [ normal ]
<leader>q or QQ -> quit [ normal ]
Ctrl+s -> save [ all mode ]
jk -> exit insert mode
esc -> clear highlight

------ Autocomplete -----
Tab -> next complete
Shift+Tab -> previous complete
Enter -> confirm

----- Format -----
<leader>f -> format files

------- LSP -------
K -> hover documentation
<leader>gd -> go definitions
<leader>gr -> references
<leader>rn -> rename symbol
<leader>ca -> code action
<leader>e -> line diagnostics
[d -> prev diagnostic
]d -> next diagnostic

------- Fold -------
zo -> Open a fold at the cursor.
zc -> Close a fold at the cursor.
za -> Toggle a fold at the cursor.
zR -> Open all folds.
zM -> Close all folds.

------- Scroll -------
ctrl+e -> scroll down 1 line
ctrl+y -> scroll up 1 line
ctrl+d -> scroll down half screen height
ctrl+u -> scroll up half screen height
ctrl+f -> scroll down full page
ctrl+u -> scroll up full page
zz -> scroll according to cursor into center
zt -> scroll according to cursor into top window
zb -> scroll according to cursor into bottom window

------- Buffer -------
*tips :
1. buffer is file that currently opened
2. buffer can be opened by ff or fg

<leader>fr or <leader><space> -> navigate all buffer
<leader>x -> delete current buffer [normal]
ctrl + d -> delete buffer [window]
ctrl + n -> new buffer [window]
QQ -> close window

```

> [!NOTE]
> Backup original config folder first before use.

#### Linux

```shell
#required
mv ~/.config/nvim{,.bak}
#optional
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

```sh
git clone https://github.com/x-wang-x/nvim-config ~/.config/nvim
```

#### Windows

```powershell
# required
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak
# optional
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
```

```powershell
git clone https://github.com/x-wang-x/nvim-config $env:LOCALAPPDATA\nvim
```
