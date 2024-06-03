return {
  "mfussenegger/nvim-lint",
  event = "LazyFile",
  opts = {
    -- Event to trigger linters
    events = { "BufWritePost", "BufReadPost", "InsertLeave" },
    linters_by_ft = {
      dockerfile = { "hadolint" },
      markdown = { "markdownlint-cli2"},
      dart = {'dartanalyzer'},
      -- Use the "*" filetype to run linters on all filetypes.
      -- ['*'] = { 'sonarlint-language-server' },
      -- Use the "_" filetype to run linters on filetypes that don't have other linters configured.
      -- ['_'] = { 'sonarlint-language-server' },
    },
    linters = {
      psalm = {
        command = require("conform.util").find_executable({
          vim.fn.stdpath("data") .. "/mason/bin/psalm",
          "vendor/bin/psalm",
        }, "psalm"),
      },
      dartanalyzer = {
        cmd = 'dart',  -- Command to run
        stdin = false,
        args = {'analyze', '--format'},  -- Arguments to pass
        stream = 'stdout',
        ignore_exitcode = true,
        parser = function(output, bufnr)
          local diagnostics = {}
          local lines = vim.split(output, '\n')

          for _, line in ipairs(lines) do
            local _, _, filename, line, col, severity, code, message = string.find(line, "^[^:]+:([^:]+):(%d+):(%d+): (%a+)%[%w+%]: (.*)$")
            if filename and line and col and severity and message then
              table.insert(diagnostics, {
                bufnr = bufnr,
                lnum = tonumber(line) - 1,
                col = tonumber(col) - 1,
                severity = vim.lsp.protocol.DiagnosticSeverity[severity:upper()],
                source = 'dartanalyzer',
                message = message,
                code = code,
              })
            end
          end

          return diagnostics
        end
      }
      --
      -- }
      -- -- Example of using selene only when a selene.toml file is present
      -- selene = {
      --   -- `condition` is another LazyVim extension that allows you to
      --   -- dynamically enable/disable linters based on the context.
      --   condition = function(ctx)
      --     return vim.fs.find({ "selene.toml" }, { path = ctx.filename, upward = true })[1]
      --   end,
      -- },
    },
  },
}

