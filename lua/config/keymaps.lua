-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
-- to remove this keymap you can just delete it from here
--
--
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- Create a new file anywhere inside the project

vim.keymap.set("n", "<leader>n", function()
  local filename = vim.fn.input("New file: ")

  if filename ~= "" then
    vim.cmd("edit " .. filename)
  end
end, { desc = "New File" })
