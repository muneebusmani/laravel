-- uncomment these two if you dont need flutter plugin
-- require'lspconfig'.dartls.setup(); 
-- if true then return {} end

-- for custom configurations for dartls: 
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#dartls
-- 
-- for checking the available options and settings : 
-- https://www.andersevenrud.net/neovim.github.io/lsp/configurations/dartls/  -- (Dont copy default values from here, copy it from above link)
-- if you need this plugin for flutter then dont configure dartls above because this plugin configures it for flutter
return {
    'akinsho/flutter-tools.nvim',
    lazy = false,
    dependencies = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
    config = true,
}
