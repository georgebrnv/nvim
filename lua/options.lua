require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.termguicolors = true -- Enable true colors
-- o.cursorlineopt ='both' -- to enable cursorline!

-- Python indentation settings
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- Python-specific filetype settings
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.opt_local.expandtab = true
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.softtabstop = 4
    vim.opt_local.smartindent = true
    vim.opt_local.autoindent = true
  end,
})
