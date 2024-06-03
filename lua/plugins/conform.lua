local util = require("conform.util")
return {
  "stevearc/conform.nvim",
  opts = function()
    local opts = {
      format = {
        timeout_ms = 1000,
        async = false, -- not recommended to change
        quiet = false, -- not recommended to change
      },
      formatters_by_ft = {
        markdown = { "markdownlint-cli2" },
        dart = { "dartfmt" },
      },
      formatters = {
        injected = { options = { ignore_errors = true } },
        dartfmt = {
          meta = {
            url = "https://dart.dev",
            description = "A Code formatter for dart",
          },
          command = "dart",
          args = { "format", "$FILENAME" },
          stdin = false,
        },
      },
    }
    return opts
  end,
}
