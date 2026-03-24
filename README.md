It's just personal config for my neovim setup.It contain colorscheme, keymap, and plugins that i use.

#### Linux
> Backup old config first :
```shell
#required
mv ~/.config/nvim{,.bak}
#optional
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```
> Clone this repo to config folder :

```sh
git clone https:///github.com/x-wang-x/nvim-config ~/.config/nvim
```

#### Windows
> Backup old config first :
```powershell
# required
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak
# optional
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
```
> Clone this repo to config folder :
```powershell
git clone https:///github.com/x-wang-x/nvim-config $env:LOCALAPPDATA\nvim
```
