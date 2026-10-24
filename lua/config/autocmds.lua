-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    if client and client.name == "jdtls" then
      client.handlers["$/progress"] = function() end
    end
  end,
})

-- Custom cursor and visual selection colors
local function set_custom_highlights()
  -- Cursor color
  vim.api.nvim_set_hl(0, "Cursor", {
    fg = "#000000",
    bg = "#15aabf",
  })

  -- -- Visual mode selection color
  -- vim.api.nvim_set_hl(0, "Visual", {
  --   fg = "ffffff",
  --   bg = "#5eacd3",
  -- })

  -- Keep the cursor highlight active in Normal and Insert modes
  vim.opt.guicursor = table.concat({
    "n-v-c:block-Cursor",
    "i-ci-ve:ver25-Cursor",
    "r-cr:hor20-Cursor",
  }, ",")
end

-- Apply after TokyoNight or any other colorscheme loads
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = set_custom_highlights,
})

-- Apply on startup too
set_custom_highlights()
