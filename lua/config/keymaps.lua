-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>dd", "<cmd>lua vim.diagnostic.open_float()<CR>", { desc = "Open diagnostic float" })
vim.keymap.set("n", "<Tab>", "<cmd>bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", "<cmd>bprevious<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<C-q>", function()
  local current_buf = vim.api.nvim_get_current_buf()
  -- Switch to alternate buffer (last opened)
  vim.cmd("buffer #")
  -- Delete the previous buffer
  vim.api.nvim_buf_delete(current_buf, { force = false })
end, { desc = "Close buffer and go to last opened" })
