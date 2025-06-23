# config

Configuration for development

# Zed Editor

Extensions:

- biome
- ruff

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

## Taplo formatter

```sh
cargo install taplo-cli --features=lsp
```

## VSCode JSON Language Server

```sh
pnpm add -g vscode-json-languageserver
```

## uv

An extremely fast Python package and project manager, written in Rust. (https://docs.astral.sh/uv/)

```sh
curl -LsSf https://astral.sh/uv/install.sh | sh
```

Tools for Python development

```sh
uv tool install poetry
uv tool install ruff
uv tool install pyright
```

## Starship

```
curl -sS https://starship.rs/install.sh | sh
```
