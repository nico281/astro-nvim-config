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
  {
    "lewis6991/hover.nvim",
    config = function()
      require("hover").setup {
        init = function()
          -- Require providers
          require("hover.providers.lsp")
          -- require('hover.providers.gh')
          -- require('hover.providers.gh_user')
          -- require('hover.providers.jira')
          -- require('hover.providers.man')
          -- require('hover.providers.dictionary')
        end,

        preview_opts = {
          border = nil
        },
        -- Whether the contents of a currently open hover window should be moved
        -- to a :h preview-window when pressing the hover keymap.
        preview_window = false,
        title = true
      }

      -- Setup keymaps
      vim.keymap.set("n", "K", require("hover").hover, { desc = "hover.nvim" })
      vim.keymap.set("n", "gK", require("hover").hover_select, { desc = "hover.nvim (select)" })
    end
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
