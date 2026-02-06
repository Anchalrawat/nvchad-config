require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "clangd", "ts_ls", "gopls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
