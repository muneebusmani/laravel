require'lspconfig'.dartls.setup {
  cmd = { "dart", "language-server", "--protocol=lsp" },
  filetypes = { "dart" },
  root_dir = function(fname)
    return require('lspconfig').util.root_pattern("pubspec.yaml")(fname) or vim.loop.os_homedir()
  end,
  init_options = {
    closingLabels = true,
    flutterOutline = true,
    onlyAnalyzeProjectsWithOpenFiles = true,
    outline = true,
    suggestFromUnimportedLibraries = true,
  },
  settings = {
    dart = {
      completeFunctionCalls = true,
      showTodos = true,
      analysisExcludedFolders = {
        vim.loop.os_homedir() .. '/.pub-cache',
      },
    }
  },
}
