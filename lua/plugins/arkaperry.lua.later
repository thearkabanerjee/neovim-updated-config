return {
  -- ArkaPerry colorscheme
  {
    "thearkabanerjee/arkaperry.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("arkaperry")
    end,
  },

  -- ArkaPerry statusline
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local custom = require("arkaperry.statusline")

      opts.options = vim.tbl_deep_extend("force", opts.options or {}, custom.options or {})

      opts.sections = custom.sections
      opts.inactive_sections = custom.inactive_sections
      opts.extensions = custom.extensions

      return opts
    end,
  },
}
