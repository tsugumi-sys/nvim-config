# Setup

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

**Table of Contents** _generated with [DocToc](https://github.com/thlorenz/doctoc)_

- [Setup](#setup)
  - [Fish Setup](#fish-setup)
  - [Install nodejs](#install-nodejs)
  - [Install additional dependencies](#install-additional-dependencies)
  - [Markdown settings](#markdown-settings)
  - [Python settings](#python-settings)
    - [Format settings](#format-settings)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

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

If you using `conda`, add the following line into `.config/fish/config.fish`

```bash
source (conda info --root)/etc/fish/conf.d/conda.fish
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

### Format settings

- add below line to `/lua/plugins/null-ls.lua`

```lua
null_ls.setup({
    -- some settings
    null_ls.builtins.formatting.black
    null_ls.builtins.diagnostics.flake8
  })
```

- Install flake8 and black
  If your virtual environment contains these packages, just
  **activate your virtual environment** before open neovim.
  Else, install via `Mason`

**_NOTE_:\_** You can configure these packages using file (e.g. .flake8, pyproject.toml).

## Terraform settings

- add the following line to `/lua/plugins/null-ls.lua`

```lua
null_ls.setup({
    -- some settings
    null_ls.builtins.formatting.terraform_fmt
  })
```

## Github settings

- add the following line to `/lua/plugins/null-ls.lua`

```lua
null_ls.setup({
    -- some settings
    null_ls.builtins.formatting.diagnostics.actionlint
  })
```

## Yaml settings

- add the following line to `/lua/plugins/null-ls.lua`

```lua
null_ls.setup({
    -- some settings
    null_ls.builtins.diagnostics.yamllint
  })
```
