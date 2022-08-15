# Setup

## Fish Setup

- Install Fish

```bash
git clone https://github.com/fish-shell/fish-shell.git -b <current_stable_version_branch>
```

```bash
cd fish && sudo make install
```

- Set fish as default terminal

```bash
# Add fish path (you can get via `$(which fish) ` to /etc/shells.
sudo vim /etc/shells
```

```bash
chsh -s $(which fish)
```

[Fish HomePage](https://fishshell.com/)

- Install oh-my-fish

[Install oh-my-fish](https://github.com/oh-my-fish/oh-my-fish)

- Install Fish Theme

```bash
omf install bobthefish
```

[bobthefish theme github](https://github.com/oh-my-fish/theme-bobthefish)

## Install nodejs

- install nodejs (via [fnm](https://github.com/Schniz/fnm?ref=hackernoon.com))

## Install additional dependencies

- install `tree-sitter-cli`

```bash
npm install -g tree-sitter-cli
```

## Markdown settings

- install `prettier` with mason

```bash
# Open nvim and run the following command
:MasonInstall prettier
```

- install `markdownlint` with mason

```bash
# Open nvim and run the following command
:MasonInstall markdownlint
```

## Python settings

1. Run `npm i -g pyright` to install pyright for nvim-lspconfig.
2. Run `:TSInstall python` for nim-treesitter.
3. Activate python virtual env before open neovim.
4. Modify `vim.g.python3_host_prog={YOUR_PYTHON_ENV_PATH}` in `init.lua`.
5. Install `pynvim` into your python environment.
