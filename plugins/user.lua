return {
  {
    'folke/tokyonight.nvim',
    as = 'tokyonight',
    config = function()
      require("tokyonight").setup {}
    end,
  },
  {'maxmx03/dracula.nvim'},
  {"rebelot/kanagawa.nvim"},
  { 'rose-pine/neovim', name = 'rose-pine' },
  {
    "catppuccin/nvim",
    as = 'catppuccin',
    config = function()
      require("catppuccin").setup {
flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false,
    show_end_of_buffer = false, -- show the '~' characters after the end of buffers
    term_colors =true,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {"italic"},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = false,
        mini = false,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
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
