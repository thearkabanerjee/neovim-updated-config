return {
  {
    "dgox16/oldworld.nvim",
    lazy = false,
    priority = 1000,

    opts = {
      variant = "default",

      terminal_colors = true,

      integrations = {
        alpha = true,
        cmp = true,
        flash = true,
        gitsigns = true,
        indent_blankline = true,
        lazy = true,
        lsp = true,
        markdown = true,
        mason = true,
        noice = true,
        notify = true,
        rainbow_delimiters = true,
        telescope = true,
        treesitter = true,
      },
    },

    config = function(_, opts)
      require("oldworld").setup(opts)
      vim.cmd.colorscheme("oldworld")
    end,
  },
}

