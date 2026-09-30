-- return {
--   {
--     "folke/snacks.nvim",
--     opts = {
--       picker = {
--         sources = {
--           explorer = {
--             hidden = true,
--           },
--         },
--       },
--     },
--   },
-- }
--
--
--
--
return {
  {
    "folke/snacks.nvim",

    opts = {
      -- ==========================================
      -- PICKER
      -- ==========================================

      picker = {
        sources = {
          explorer = {
            hidden = true,
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

        sections = {

          -- ======================================
          -- LEFT SIDE
          -- Existing Neovim logo only
          -- ======================================

          {
            section = "header",
            padding = 1,
          },

          -- ======================================
          -- RIGHT SIDE
          -- ======================================

          -- PROJECTS FIRST
          {
            pane = 2,

            icon = "󰉋 ",
            title = "PROJECTS",

            section = "projects",

            indent = 2,
            padding = 1,

            limit = 5,
          },

          -- RECENT FILES SECOND
          {
            pane = 2,

            icon = "󰈙 ",
            title = "RECENT FILES",

            section = "recent_files",

            indent = 2,
            padding = 1,

            limit = 5,
          },

          -- ======================================
          -- FOOTER
          -- ======================================

          {
            section = "startup",
            padding = 1,
          },
        },
      },
    },
  },
}
