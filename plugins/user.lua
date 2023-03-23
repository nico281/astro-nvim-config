return {
  { "catppuccin/nvim", name = "catppuccin" },

  {
    'folke/tokyonight.nvim',
    as = 'tokyonight',
    config = function()
      require("tokyonight").setup {}
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
