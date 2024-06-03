
return {
  "folke/edgy.nvim",
  event = "VeryLazy",
  init = function()
    vim.opt.laststatus = 3
    vim.opt.splitkeep = "screen"
    vim.g.db_ui_auto_execute_table_helpers = 1
  end,
  opts = {
    right, {
      ft = "Outline",
      pinned = false,
      open = "SymbolsOutlineOpen",
    }

  }}
