return {
  {
    "smoka7/hop.nvim",
    opts = {},
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require("hop").setup { keys = "tnseriaogmpldhfu" }
    end,
    keys = {
      {
        "s",
        function() require("hop").hint_words() end,
        mode = { "n" },
        desc = "Hop hint words",
      },
      {
        "<S-s>",
        function() require("hop").hint_lines() end,
        mode = { "n" },
        desc = "Hop hint lines",
      },
      {
        "s",
        function() require("hop").hint_words { extend_visual = true } end,
        mode = { "v" },
        desc = "Hop hint words",
      },
      {
        "<S-s>",
        function() require("hop").hint_lines { extend_visual = true } end,
        mode = { "v" },
        desc = "Hop hint lines",
      },
    },
  },
  {
    "catppuccin/nvim",
    optional = true,
    ---@type CatppuccinOptions
    opts = { integrations = { hop = true } },
  },
}
