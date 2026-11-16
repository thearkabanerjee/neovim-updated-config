return {
  {
    "folke/snacks.nvim",

    opts = {
      -- ==========================================
      -- PICKER / EXPLORER
      -- ==========================================

      picker = {
        sources = {
          explorer = {
            hidden = true,
            ignored = true,
            layout = {
              hidden = { "input" },
            },
          },
        },
      },

      -- ==========================================
      -- DASHBOARD
      -- ==========================================

      dashboard = {
        width = 65,
        row = nil,
        col = nil,
        pane_gap = 2,

        preset = {
          header = [[
⠀⠀⠀⠀⢀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⡀⢀⠀⠀⠀⠀
⠀⠀⠀⢠⠂⢰⠁⠀⠀⠀⠀⠀⠀⠀⠀⠰⡀⢣⡀⠀⠀
⠀⠀⢀⡏⢀⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣧⠀⢧⠀⠀
⠀⠀⣼⠀⣾⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡆⢸⡆⠀
⠀⢠⣿⠀⠙⣛⣋⣭⣳⣴⣦⣴⣴⣫⣭⣛⡛⠋⠈⣿⠀
⠀⠈⠻⠟⠋⢉⣴⠶⣾⣿⣿⣿⣿⡶⠶⣌⠉⠙⠻⠟⠁
⠀⠀⠀⣠⡴⠛⢡⡾⠋⣿⣿⣿⣧⠹⣦⡌⠳⣦⡀⠀⠀
⢠⣴⠞⠉⠀⠀⢸⡏⠀⢿⣿⣿⡇⠀⣿⡇⠀⠀⠙⢷⣤
⢸⣏⠀⠀⠀⠀⢸⡇⠀⠸⣿⣿⠁⠀⣿⡇⠀⠀⠀⠀⣿
⠀⣿⠀⠀⠀⠀⢸⡇⠀⠀⠙⠃⠀⠀⣿⠇⠀⠀⠀⢰⡟
⠀⢹⡄⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⣸⠃
⠀⠀⢣⠀⠀⠀⠀⣧⠀⠀⠀⠀⠀⢀⡏⠀⠀⠀⢀⠏⠀
⠀⠀⠈⢆⠀⠀⠀⢸⡀⠀⠀⠀⠀⢸⠁⠀⠀⠀⡜⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢡⠀⠀⠀⢀⠃⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
          ]],
        },

        sections = {
          -- LEFT SIDE: RED SPIDER
          {
            section = "header",
            padding = 1,
            pane = 1,
            hl = "SnacksDashboardSpider",
          },

          -- RIGHT SIDE: PROJECTS
          {
            pane = 2,
            icon = "󰉋 ",
            title = "PROJECTS",
            section = "projects",
            indent = 2,
            padding = 1,
            limit = 5,
          },

          -- RIGHT SIDE: RECENT FILES
          {
            pane = 2,
            icon = "󰈙 ",
            title = "RECENT FILES",
            section = "recent_files",
            indent = 2,
            padding = 1,
            limit = 5,
          },
        },
      },
    },

    -- ==========================================
    -- SPIDER COLOR
    -- ==========================================

    init = function()
      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = function()
          vim.api.nvim_set_hl(0, "SnacksDashboardSpider", {
            fg = "#ff0000",
          })
        end,
      })

      vim.api.nvim_set_hl(0, "SnacksDashboardSpider", {
        fg = "#ff0000",
      })
    end,
  },
}
