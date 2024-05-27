return {
  "mfussenegger/nvim-lint",
  event = "LazyFile",
  opts = {
    -- Event to trigger linters
    events = { "BufWritePost", "BufReadPost", "InsertLeave" },
    linters_by_ft = {
      fish = { "fish" },
      dockerfile = { "hadolint" },
      -- php = { "psalm" },
      -- js = { "eslint" },
      -- jsx = { "eslint" },
      -- ts = { "eslint" },
      -- tsx = { "eslint_d" },
      -- python = { "pylint" },
      -- Use the "*" filetype to run linters on all filetypes.
      -- ['*'] = { 'global linter' },
      -- Use the "_" filetype to run linters on filetypes that don't have other linters configured.
      -- ['_'] = { 'fallback linter' },
    },
    -- LazyVim extension to easily override linter options
    -- or add custom linters.
    -- @type table<string,table>
    -- linters = {
      -- psalm = {
      -- command = require("conform.util").find_executable({
      --   vim.fn.stdpath("data") .. "/mason/bin/psalm",
      --   "vendor/bin/psalm",
      -- }, "psalm"),
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
    -- },
  },
}
