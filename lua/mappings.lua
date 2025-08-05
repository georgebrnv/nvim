require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- DAP debugging keymaps
map("n", "<leader>db", "<cmd>DapToggleBreakpoint<cr>", { desc = "Toggle breakpoint" })
map("n", "<leader>dc", "<cmd>DapContinue<cr>", { desc = "Continue debugging" })
map("n", "<leader>di", "<cmd>DapStepInto<cr>", { desc = "Step into" })
map("n", "<leader>do", "<cmd>DapStepOver<cr>", { desc = "Step over" })
map("n", "<leader>dO", "<cmd>DapStepOut<cr>", { desc = "Step out" })
map("n", "<leader>dr", "<cmd>DapToggleRepl<cr>", { desc = "Toggle REPL" })
map("n", "<leader>dl", "<cmd>DapShowLog<cr>", { desc = "Show DAP log" })
map("n", "<leader>du", "<cmd>lua require('dapui').toggle()<cr>", { desc = "Toggle DAP UI" })

-- Python-specific debugging
map("n", "<leader>dpt", "<cmd>lua require('dap-python').test_method()<cr>", { desc = "Debug Python test method" })
map("n", "<leader>dpc", "<cmd>lua require('dap-python').test_class()<cr>", { desc = "Debug Python test class" })
map("v", "<leader>dps", "<cmd>lua require('dap-python').debug_selection()<cr>", { desc = "Debug Python selection" })
