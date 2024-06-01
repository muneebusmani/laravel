return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      ---@type lspconfig.options
      servers = {
        -- phpactor = {
        --   filetypes = { "php", "blade" },
        --   settings = {
        --     phpactor = {
        --       filetypes = { "php", "blade" },
        --       files = {
        --         associations = { "*.php", "*.blade.php" }, -- Associating .blade.php files as well
        --         maxSize = 5000000,
        --       },
        --     },
        --   },
        -- },
        intelephense = {
          filetypes = { "php", "blade" },
          settings = {
            intelephense = {
              filetypes = { "php", "blade" },
              files = {
                associations = { "*.php", "*.blade.php" }, -- Associating .blade.php files as well
                maxSize = 5000000,
              },
            },
          },
        },
        bashls = {
          filetypes = { "bash", "zsh", "sh"},
          cmd_env = {
            GLOB_PATTERN = "*@(.sh|.inc|.bash|.bash_profile|.bash_login|.bash_aliases|.profile|.command|.zsh|.zshrc|.zshenv|.zprofile|.zlogin|.zlogout)"
          }
        },
        cssls = {
          filetypes = { "css", "scss", "less" , "sass"}
        },
      },
    },
  },
}
