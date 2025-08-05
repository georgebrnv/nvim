require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "pyright" }
vim.lsp.enable(servers)

-- Configure pyright for Python development
local lspconfig = require("lspconfig")
local util = require("lspconfig/util")

lspconfig.pyright.setup({
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        typeCheckingMode = "strict",
        diagnosticMode = "workspace",
        autoImportCompletions = true,
      },
    },
  },
})

-- Mypy type checking (via null-ls or nvim-lint would be better, but basic setup here)
-- Note: For better mypy integration, consider adding null-ls or nvim-lint plugin

-- read :h vim.lsp.config for changing options of lsp servers 
