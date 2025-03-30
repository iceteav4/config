# config
Configuration for development
# fnm
Node version manager built in Rust

repo: https://github.com/Schniz/fnm
```
curl -fsSL https://fnm.vercel.app/install | bash
fish_add_path ~/.local/share/fnm/
fnm completions --shell fish
echo "fnm env --use-on-cd --shell fish | source" > ~/.config/fish/conf.d/fnm.fish
```
# PNPM
```sh
curl -fsSL https://get.pnpm.io/install.sh | sh -
fish_add_path ~/.local/share/pnpm
```
## Biome formatter
```sh
pnpm add -g @biomejs/biome
```
## VSCode JSON Language Server
```sh
pnpm add -g vscode-json-languageserver
```
## Ruff
```sh
pipx install ruff
```
## Pyright
```sh
pipx install pyright
```
## Starship
```
curl -sS https://starship.rs/install.sh | sh
```
