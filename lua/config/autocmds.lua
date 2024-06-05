-- Autocmds are automatically loaded on the VeryLazy event
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  group = augroup,
  pattern = "*.blade.php",
  callback = function()
    vim.bo.filetype = "php"
  end,
})
vim.api.nvim_create_autocmd("LspAttach", {
  pattern = "*.blade.php",
  callback = function(args)
    vim.schedule(function()
      -- Check if the attached client is 'phpactor'
      for _, client in ipairs(vim.lsp.get_active_clients()) do
        if client.name == "intelephense" and client.attached_buffers[args.buf] then
          vim.api.nvim_buf_set_option(args.buf, "filetype", "blade")
          vim.api.nvim_buf_set_option(args.buf, "syntax", "blade")
          break
        end
      end
    end)
  end,
})
vim.api.nvim_exec(
  [[
autocmd FileType php set iskeyword+=$
]],
  false
)
