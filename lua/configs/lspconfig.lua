local config = require("nvchad.configs.lspconfig")
local on_attach = config.on_attach
local capabilities = config.capabilities
local lspconfig = require("lspconfig")

-- Configure diagnostics display
vim.diagnostic.config({
  virtual_text = {
    spacing = 4,
    prefix = "▸",
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

-- Fix diagnostic colors
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = "#ef4444", bold = true })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { fg = "#f9e2af", bold = true })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { fg = "#89b4fa", bold = true })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = "#94e2d5", bold = true })

-- Fix diagnostic signs (E, W, I, H letters) to match
vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = "#ef4444", bold = true })
vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = "#f9e2af", bold = true })
vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { fg = "#89b4fa", bold = true })
vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = "#94e2d5", bold = true })

local servers = {
  "pyright",
  "html",
  "cssls",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    on_attach = on_attach,
    capabilities = capabilities,
  })
end

 
