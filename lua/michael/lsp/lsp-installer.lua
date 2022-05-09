local status_ok, lsp_installer = pcall(require,"nvim-lsp-installer")
if not status_ok then
	return
end

lsp_installer.setup {
	automatic_installation = true
}

local opts = {
	on_attach = require("michael.lsp.handlers").on_attach,
	capabilities = require("michael.lsp.handlers").capabilities,
}

local lspconfig = require("lspconfig")

lspconfig.pyright.setup(opts)

local sumneko = require("michael.lsp.settings.sumneko_lua")
local sumneko_opts = vim.tbl_deep_extend("force", sumneko, opts)
lspconfig.sumneko_lua.setup(sumneko_opts)

lspconfig.gopls.setup(opts)

lspconfig.rust_analyzer.setup(opts)


