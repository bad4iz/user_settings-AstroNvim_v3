-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
return {
  'nvim-tree/nvim-tree.lua',
  lazy = false,
  config = function(plugin, opts)
    -- run the core AstroNvim configuration function with the options table
    require("nvim-tree").setup({
      sort_by = "case_sensitive",
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    })
  end,
}
