return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.winbar = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},

        lualine_x = {
          {
            "filetype",
            icon_only = true,
            colored = false,
            color = {
              fg = "#15202b",
              bg = "#f06292",
            },
            separator = { left = "", right = "" },
          },
          {
            "filename",
            file_status = true,
            path = 0,
            shorting_target = 40,
            symbols = {
              modified = "[+]",
              readonly = "[-]",
              unnamed = "[No Name]",
            },
            color = {
              fg = "#15202b",
              bg = "#f06292",
              gui = "bold",
            },
            separator = { left = "", right = "" },
          },
        },

        lualine_y = {},
        lualine_z = {},
      }
    end,
  },
}
