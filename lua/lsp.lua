require('mason').setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})


local lspconfig = require('lspconfig')

lspconfig.pylsp.setup({
	on_attach = on_attach,
})
lspconfig.clangd.setup({})
lspconfig.lua_ls.setup({})
