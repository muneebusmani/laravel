
vim.cmd([[
  augroup LintAutogroup
    autocmd!
    autocmd BufWritePost *.dart lua require('lint').try_lint()
  augroup END
]])
