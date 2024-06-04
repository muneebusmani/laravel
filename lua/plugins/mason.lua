return {
  "williamboman/mason.nvim",
  event = "LazyFile",
  opts = {
    ensure_installed = {
      "blade-formatter",
      "docker-compose-language-service",
      "dockerfile-language-server",
      "emmet-ls",
      "eslint_d",
      "hadolint",
      "html-lsp",
      "intelephense",
      "phpstan",
      -- "pint",
      "pretty-php",
      "psalm",
      "sqlls",
      "sqlfmt",
      "sqlfluff",
      "prettierd",
    },
  },
}
