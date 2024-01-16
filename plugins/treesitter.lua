-- return {
--   "nvim-treesitter/nvim-treesitter",
--   dependencies = { -- add a new dependency to telescope that is our new plugin
--     "p00f/nvim-ts-rainbow",
--   },
--   opts = {
--     ensure_installed = { "javascript", "tsx", "typescript" },
--     sync_install = false,
--     ignore_install = { "" }, -- List of parsers to ignore installing
--     highlight = {
--       enable = true,         -- false will disable the whole extension
--       disable = { "" },      -- list of language that will be disabled
--       additional_vim_regex_highlighting = true,
--     },
--     indent = { enable = true, disable = { "yaml" } },
--     rainbow = {
--       enable = true,
--       -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
--       extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
--       max_file_lines = nil, -- Do not enable for files with more than n lines, int
--       -- colors = {}, -- table of hex strings
--       -- termcolors = {} -- table of colour name strings
--     },
--     -- ensure_installed = { "lua" },
--   },
-- }
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
      -- "lua"
    })
  end,
}
