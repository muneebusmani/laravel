return {
  {
    "danymat/neogen",
    config = function ()
      require('neogen').setup({ snippet_engine = "luasnip" })
      local wkopts = function(keymaps, description)
        return { keymaps, description, noremap = true, silent = true }
      end
      local wk = require("which-key")
      wk.register({
        gd = {
          name = "Generate Docs",
          f = wkopts("<cmd>Neogen file<CR>", "Generate Doc for file"),
          c = wkopts("<cmd>Neogen class<CR>", "Generate Doc for class"),
          t = wkopts("<cmd>Neogen type<CR>", "Generate Doc for type"),
          n = wkopts("<cmd>Neogen func<CR>", "Generate Doc for function"),
        },
      }, { prefix = "<leader>" })
    end,
    -- Uncomment next line if you want to follow only stable versions
    -- version = "*"
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function (_,opts)
      local neogen = require('neogen')
      local cmp = require('cmp')
       opts.mapping = vim.tbl_deep_extend("force", opts.mapping, {
         ["<tab>"] = cmp.mapping(function(fallback)
            if neogen.jumpable() then
                neogen.jump_next()
            else
                fallback()
            end
        end, {
            "i",
            "s",
        }),
        ["<S-tab>"] = cmp.mapping(function(fallback)
            if neogen.jumpable(true) then
                neogen.jump_prev()
            else
                fallback()
            end
        end, {
            "i",
            "s",
        }), 
      })
    end
  }
}
