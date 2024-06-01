-- if true then
--   return {}
-- end
return {
  "folke/edgy.nvim",
  event = "VeryLazy",
  init = function()
    vim.opt.laststatus = 3
    vim.opt.splitkeep = "screen"
  end,
  opts = {
    right = {
      {
        ft = "undotree",
        pinned = true,
        open = "lua require('undotree').toggle()",
      },
      {
        ft = "dbui",
        pinned = true,
        open = "DBUI",
      },
      {
        ft = "Outline",
        pinned = true,
        open = "SymbolsOutlineOpen",
      },
    },
    options = {
      right = { size = 40 },
    },
    animate = {
      enabled = true,
      fps = 60, -- frames per second
      cps = 60, -- cells per second
      on_begin = function()
        vim.g.minianimate_disable = false
      end,
      on_end = function()
        vim.g.minianimate_disable = false
      end,
      spinner = {
        frames = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" },
        interval = 60,
      },
    },
  },
}
-- {
--   "folke/edgy.nvim",
--   event = "VeryLazy",
--   opts = {
--
--   }
-- }
