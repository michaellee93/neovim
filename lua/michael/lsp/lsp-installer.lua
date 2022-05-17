local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
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


local sumneko = require("michael.lsp.settings.sumneko_lua")
local sumneko_opts = vim.tbl_deep_extend("force", sumneko, opts)
lspconfig.sumneko_lua.setup(sumneko_opts)


lspconfig.pyright.setup(opts)
lspconfig.gopls.setup(opts)

local rust_opts = {
	on_attach = opts.on_attach,
	capabilities = opts.capabilities,
  settings = {
        ["rust-analyzer"] = {
            assist = {
                importGranularity = "module",
                importPrefix = "self",
            },
            cargo = {
                loadOutDirsFromCheck = true
            },
            procMacro = {
                enable = true
            },
        }
    }
}

lspconfig.rust_analyzer.setup(rust_opts)
lspconfig.cssls.setup(opts)
lspconfig.clangd.setup(opts)
--lspconfig.eslint.setup(opts)
lspconfig.html.setup(opts)
lspconfig.tsserver.setup(opts)
lspconfig.volar.setup(opts)
