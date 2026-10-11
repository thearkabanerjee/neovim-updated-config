return {
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,

    config = function()
      local onedark = require("onedark")

      onedark.setup({
        style = "darker",
      })

      -- Capture One Dark syntax colors.
      local groups = {
        "@keyword",
        "@keyword.function",
        "@function",
        "@function.call",
        "@method",
        "@method.call",
        "@string",
        "@number",
        "@boolean",
        "@constant",
        "@variable",
        "@type",
        "@type.builtin",
        "@constructor",
        "@operator",
        "@conditional",
        "@repeat",
        "@comment",
      }

      -- Keep OldWorld active.
      vim.schedule(function()
        local saved = {}

        -- Load One Dark temporarily to capture its colors.
        vim.cmd.colorscheme("oldworld")
        onedark.load()

        for _, name in ipairs(groups) do
          saved[name] = vim.api.nvim_get_hl(0, {
            name = name,
            link = false,
          })
        end

        -- Restore OldWorld.
        vim.cmd.colorscheme("oldworld")

        -- Apply One Dark colors to OldWorld.
        for name, hl in pairs(saved) do
          if next(hl) then
            vim.api.nvim_set_hl(0, name, hl)
          end
        end

        -- Replace violet syntax colors with blue.
        local blue_groups = {
          "@keyword",
          "@keyword.function",
          "@conditional",
          "@repeat",
          "@function",
          "@function.call",
          "@method",
          "@method.call",
          "@operator",
        }

        for _, group in ipairs(blue_groups) do
          vim.api.nvim_set_hl(0, group, {
            fg = "#61AFEF",
          })
        end

        -- Cooler cyan-blue for types and booleans.
        local cyan_groups = {
          "@type",
          "@type.builtin",
          "@constructor",
          "@boolean",
        }

        for _, group in ipairs(cyan_groups) do
          vim.api.nvim_set_hl(0, group, {
            fg = "#56B6C2",
          })
        end
      end)
    end,
  },
}
