return {
  "m4xshen/hardtime.nvim",
  event = "User AstroFile",
  opts = {
    disabled_keys = {
      ["<UP>"] = { "", "i" },
      ["<DOWN>"] = { "", "i" },
      ["<LEFT>"] = { "", "i" },
      ["<RIGHT>"] = { "", "i" },
    },
    -- disabled_keys = {
    --   -- ["<Insert>"] = { "", "i" },
    --   -- ["<Home>"] = { "", "i" },
    --   -- ["<End>"] = { "", "i" },
    --   -- ["<PageUp>"] = { "", "i" },
    --   -- ["<PageDown>"] = { "", "i" },
    -- },
  },
  config = function(_, opts)
    -- require("hardtime").setup(opts)
    -- require("hardtime").enable()
  end,
}
