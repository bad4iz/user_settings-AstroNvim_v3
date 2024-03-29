# AstroNvim User Configuration Example

A user configuration template for [AstroNvim](https://github.com/AstroNvim/AstroNvim)

## 🛠️ Installation

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
```

#### Clone AstroNvim

```shell
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
```
##### powershell
```powershell
git clone https://github.com/AstroNvim/AstroNvim $env:LOCALAPPDATA\nvim
```




#### Create a new user repository from this template

Press the "Use this template" button above to create a new repository to store your user configuration.

You can also just clone this repository directly if you do not want to track your user configuration in GitHub.

#### Clone the repository

```shell
git clone https://github.com/bad4iz/user_settings-AstroNvim_v3 ~/.config/nvim/lua/user
```
##### powershell
```powershell
git clone git@github.com:bad4iz/user_settings-AstroNvim_v3.git $env:LOCALAPPDATA\nvim\lua\user
```


#### Start Neovim

```shell
nvim
```


### deleting
```shell
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim
```
