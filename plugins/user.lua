return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    lazy = false,
    config = function() require("lsp_signature").setup() end,
  },
  "folke/tokyonight.nvim",
  { "wakatime/vim-wakatime", lazy = false },
  { "mattn/emmet-vim",       lazy = false },
  -- { 'nvim-neo-tree/neo-tree.nvim', enabled = false }
}
