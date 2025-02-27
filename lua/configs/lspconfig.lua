-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = { "lua_ls", "omnisharp", "gopls", "openscad_lsp", "harper_ls", "clangd" }
}

require("lspconfig").dartls.setup{

}
require'lspconfig'.clangd.setup{}
