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
    bottom = require("plugins.edgy.bottom"),
    left = require("plugins.edgy.left"),
    right = require("plugins.edgy.right"),
    animate = {
      enabled = true,
      fps = 60, -- frames per second
      cps = 60, -- cells per second
      on_begin = function()
        vim.g.minianimate_disable = true
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
