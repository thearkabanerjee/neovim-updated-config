return {
  {
    "folke/noice.nvim",
    opts = {
      cmdline = {
        enabled = true,
      },

      routes = {
        {
          filter = {
            event = "lsp",
            kind = "progress",
            find = "jdtls",
          },
          opts = {
            skip = true,
          },
        },
      },
    },
  },
}
