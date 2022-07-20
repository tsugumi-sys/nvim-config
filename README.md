# Common Setup
1. install nodejs (e.g. nvm)

## Python settings
1. Run `npm i -g pyright` to install pyright for nvim-lspconfig.
2. Run `:TSInstall python` for nim-treesitter.
3. Activate python virtual env before open neovim.
4. Modify `vim.g.python3_host_prog={YOUR_PYTHON_ENV_PATH}` in `init.lua`.
5. Install `pynvim` into your python environment.
