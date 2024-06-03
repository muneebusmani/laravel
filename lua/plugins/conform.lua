local util = require("conform.util")
return {
  "stevearc/conform.nvim",
  opts = function()
    ---@class ConformOpts
    local opts = {
      format = {
        timeout_ms = 1000,
        async = false, -- not recommended to change
        quiet = false, -- not recommended to change
      },
      ---@type table<string, conform.FormatterUnit[]>
      formatters_by_ft = {
        markdown = { "mdformat" },
        dart = { "dartfmt" },
      },
      ---@type table<string, conform.FormatterConfigOverride|fun(bufnr: integer): nil|conform.FormatterConfigOverride>
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
