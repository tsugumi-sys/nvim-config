local status, null_ls = pcall(require, "null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
if (not status) then return end

null_ls.setup({
  debug = true,
  sources = {
    null_ls.builtins.diagnostics.fish,
    null_ls.builtins.formatting.prettier.with({
      filetypes = { "markdown" }
    })
  },
  --on_attach = function(client, bufnr)
  --  if client.supports_method("textDocument/formatting") then
  --    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
  --    vim.api.nvim_create_autocmd("BufWritePre", {
  --      group = augroup,
  --      buffer = bufnr,
  --      callback = function()
  --        vim.lsp.buf.formatting_sync()
  --      end,
  --    })
  --  end
  --end
})
