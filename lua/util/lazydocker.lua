local Util = require("lazyvim.util")
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "<leader>ld", function()
  Util.terminal.open(
    { "lazydocker", "-f", Util.root.get() .. "docker-compose.yml" },
    { cwd = Util.root.get(), esc_esc = false }
  )
end, { desc = "LazyDocker (root dir)" })
