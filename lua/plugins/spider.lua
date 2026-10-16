return {
  {
    "folke/snacks.nvim",

    init = function()
      local function set_spider_color()
        vim.api.nvim_set_hl(0, "SnacksDashboardHeader", {
          fg = "#ff0000",
          force = true,
        })
      end

      -- Apply immediately
      set_spider_color()

      -- Reapply whenever the colorscheme changes
      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = set_spider_color,
      })
    end,
  },
}
