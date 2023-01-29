local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
	'eslint',
	'rust_analyzer',
})

lsp.setup()

lsp.set_preferences({
	sign_icons = {}
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  if client.name == "eslint" then
      vim.cmd.LspStop('eslint')
      return
  end

end)

