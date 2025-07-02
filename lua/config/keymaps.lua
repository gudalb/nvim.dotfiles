-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("n", "<leader>df", "<Cmd>lua require('neotest').run.run()<cr>", { desc = "Run closest test" })
map("n", "<leader>da", "<Cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>", { desc = "Run tests in file" })
map("n", "<leader>ds", "<Cmd>lua require('neotest').run.stop()<cr>", { desc = "Stop runnng tests" })
map("n", "<leader>dS", "<Cmd>lua require('neotest').summary.open()<cr>", { desc = "Open summary" })
map("n", "<leader>dC", "<Cmd>lua require('neotest').summary.close()<cr>", { desc = "Close summary" })

vim.keymap.set({ "n", "x" }, "<leader>ca", function()
    require("tiny-code-action").code_action()
end, { noremap = true, silent = true })
