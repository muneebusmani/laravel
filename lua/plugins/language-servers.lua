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
        rust_analyzer = {},
        intelephense = {},
        perlls = {},
        powershell_es = {},
        sqlls = {},
        cssls = {},
        jsonls = {},
        rnix = {},
        tsserver = {},
        svelte = {},
        html = {},
      },
    },
  },
}
