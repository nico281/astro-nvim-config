return {
  { "catppuccin/nvim", name = "catppuccin" },

  {
    'folke/tokyonight.nvim',
    as = 'tokyonight',
    config = function()
      require("tokyonight").setup {}
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
  {
    "aspeddro/gitui.nvim",
    config = function()
      require("gitui").setup {
        {
          -- Command Options
          command = {
            -- Enable :Gitui command
            -- @type: bool
            enable = true,
          },
          -- Path to binary
          -- @type: string
          binary = "gitui",
          -- Argumens to gitui
          -- @type: table of string
          args = {},
          -- WIndow Options
          window = {
            options = {
              -- Width window in %
              -- @type: number
              width = 90,
              -- Height window in %
              -- @type: number
              height = 80,
              -- Border Style
              -- Enum: "none", "single", "rounded", "solid" or "shadow"
              -- @type: string
              border = "rounded",
            },
          },
        }
      }
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
