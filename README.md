# Setup

## Fish Setup

1. Install Fish

```bash
git clone https://github.com/fish-shell/fish-shell.git -b <current_stable_version_branch>
```

```bash
sudo make install
```

[Fish HomePage](https://fishshell.com/)

2. Install oh-my-fish

[Install oh-my-fish](https://github.com/oh-my-fish/oh-my-fish)

3. Install Fish Theme

```bash
omf install bobthefish
```

[bobthefish theme github](https://github.com/oh-my-fish/theme-bobthefish)

## Install nodejs

1. install nodejs (via [fnm](https://github.com/Schniz/fnm?ref=hackernoon.com))

## Python settings

1. Run `npm i -g pyright` to install pyright for nvim-lspconfig.
2. Run `:TSInstall python` for nim-treesitter.
3. Activate python virtual env before open neovim.
4. Modify `vim.g.python3_host_prog={YOUR_PYTHON_ENV_PATH}` in `init.lua`.
5. Install `pynvim` into your python environment.
