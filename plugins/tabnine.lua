-- Get platform depended build script
local function get_tabnine_build_string()
  if vim.fn.has "win32" == 1 then
    -- use special windows path
    return "pwsh.exe -file .\\dl_binaries.ps1"
  else
    -- unix path
    return "./dl_binaries.sh"
  end
end

return {
  {
    "codota/tabnine-nvim",
    build = get_tabnine_build_string(),
    config = function()
      require("tabnine").setup {
        disable_auto_comment = true,
        accept_keymap = "<c-t>",
        dismiss_keymap = "<C-]>",
        debounce_ms = 100,
        suggestion_color = { gui = "darkslategrey", cterm = 444 },
        exclude_filetypes = { "TelescopePrompt" },
      }
    end,
    lazy = false,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      { "tzachar/cmp-tabnine", build = "pwsh.exe -file .\\install.ps1" },
      { "hrsh7th/cmp-emoji", lazy = false },
    },
    opts = function(_, opts)
      -- opts parameter is the default options table
      -- the function is lazy loaded so cmp is able to be required
      local cmp = require "cmp"
      -- modify the sources part of the options table
      opts.sources = cmp.config.sources {
        { name = "cmp_tabnine", priority = 1010 },
        { name = "nvim_lsp", priority = 1000 },
        { name = "luasnip", priority = 750 },
        { name = "buffer", priority = 500 },
        { name = "path", priority = 250 },
        { name = "emoji", priority = 700 }, -- add new source
      }

      -- return the new table to be used
      return opts
    end,
    lazy = false,
  },
}
