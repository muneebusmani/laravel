local Util = require("lazyvim.util")
local map = vim.keymap.set
map("n", "<leader>lg", function()
  Util.lazygit({ cwd = Util.root.git() })
end, { desc = "Lazygit (Root Dir)" })
map("n", "<leader>lG", function()
  Util.lazygit()
end, { desc = "Lazygit (cwd)" })
map("n", "<leader>lb", Util.lazygit.blame_line, { desc = "Git Blame Line" })
