return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp", lazy = false },

  { import = "astrocommunity.code-runner.compiler-nvim", lazy = true },

  { import = "astrocommunity.editing-support.neogen", lazy = true },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim", lazy = false },
  { import = "astrocommunity.editing-support.telescope-undo-nvim", lazy = false },
  { import = "astrocommunity.editing-support.vim-move", lazy = false },
  { import = "astrocommunity.editing-support.wildfire-nvim", lazy = false },
  { import = "astrocommunity.motion.nvim-surround", lazy = false },
  { import = "astrocommunity.motion.hop-nvim", lazy = false },
  { import = "astrocommunity.pack.typescript", lazy = false },
  { import = "astrocommunity.pack.tailwindcss", lazy = false },
  { import = "astrocommunity.pack.vue", lazy = false },
  { import = "astrocommunity.pack.lua", lazy = false },
  { import = "astrocommunity.pack.json", lazy = false },
  { import = "astrocommunity.pack.html-css", lazy = false },
  { import = "astrocommunity.register.nvim-neoclip-lua", lazy = false },

  { import = "astrocommunity.workflow.bad-practices-nvim", lazy = false },
}
