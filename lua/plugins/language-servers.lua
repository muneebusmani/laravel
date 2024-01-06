return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        dartls = {},
        bashls = {
          filetypes = { "sh", "zsh", "bash", "aliases", "exports" },
        },
        emmet_language_server = {},
        marksman = {},
        omnisharp = {},
        tailwindcss = {},
        angularls = {},
        intelephense = {},
        sqlls = {},
        cssls = {},
        jsonls = {},
        rnix = {},
        tsserver = {},
        html = {},
      },
    },
  },
}
