return {
  {
    'folke/tokyonight.nvim',
    as = 'tokyonight',
    config = function()
      require("tokyonight").setup {}
    end,
  },
  {
    "catppuccin/nvim",
    as = 'catppuccin',
    config = function()
      require("catppuccin").setup {
      }
    end,
  },
  {'embark-theme/vim', as = 'embark',
config = function()
end
},
{'sainnhe/sonokai'},
{"savq/melange-nvim"},

  { 'windwp/nvim-ts-autotag', as = 'nvim-ts-autotag', config = function()
      require('nvim-ts-autotag').setup()
    end
  },

  {
    "jay-babu/mason-null-ls.nvim",
    config = function(plugin, opts)
      local mason_null_ls = require("mason-null-ls")
      local null_ls = require "null-ls"

      mason_null_ls.setup(opts)      -- run setup
      
    end,
  },
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
