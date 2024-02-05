return {
  {
    "ggandor/leap.nvim",
    keys = {
      { "t", "<Plug>(leap-forward-to)", mode = { "n" }, desc = "Leap forward to" },
      { "T", "<Plug>(leap-backward-to)", mode = { "n" }, desc = "Leap backward to" },
    },
    opts = {},
    init = function() -- https://github.com/ggandor/leap.nvim/issues/70#issuecomment-1521177534
      vim.api.nvim_create_autocmd("User", {
        callback = function()
          vim.cmd.hi("Cursor", "blend=100")
          vim.opt.guicursor:append { "a:Cursor/lCursor" }
        end,
        pattern = "LeapEnter",
      })
      vim.api.nvim_create_autocmd("User", {
        callback = function()
          vim.cmd.hi("Cursor", "blend=0")
          vim.opt.guicursor:remove { "a:Cursor/lCursor" }
        end,
        pattern = "LeapLeave",
      })
    end,
    dependencies = {
      "tpope/vim-repeat",
    },
  },
  {
    "catppuccin/nvim",
    optional = true,
    ---@type CatppuccinOptions
    opts = { integrations = { leap = true } },
  },
}
