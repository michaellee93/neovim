local status_ok, lsp_installer = pcall(require,"nvim-lsp-installer")
if not status_ok then
	return
end

lsp_installer.setup {
	automatic_installation = true
}

lspconfig = require("lspconfig")

lspconfig.pyright.setup {
	on_attach = require("michael.lsp.handlers").on_attach,
	capabilities = require("michael.lsp.handlers").capabilities,
}

lspconfig.sumneko_lua.setup{
	on_attach = require("michael.lsp.handlers").on_attach,
	capabilities = require("michael.lsp.handlers").capabilities,
}

lspconfig.gopls.setup{
	on_attach = require("michael.lsp.handlers").on_attach,
	capabilities = require("michael.lsp.handlers").capabilities,
}

lspconfig.rust_analyzer.setup{
	on_attach = require("michael.lsp.handlers").on_attach,
	capabilities = require("michael.lsp.handlers").capabilities,
}


