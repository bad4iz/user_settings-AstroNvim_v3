local prefix = "<Leader>T"
return {
  {
    "nvim-neotest/neotest",
    lazy = true,
    dependencies = {
      {
        "AstroNvim/astrocore",
        opts = {
          mappings = {
            n = {
              [prefix] = { desc = "󰗇 Tests" },
              -- [prefix .. "t"] = { function() require("neotest").run.run() end, desc = "Run test" },
              -- [prefix .. "d"] = { function() require("neotest").run.run { strategy = "dap" } end, desc = "Debug test" },
              --
              -- [prefix .. "f"] = {
              --   function() require("neotest").run.run(vim.fn.expand "%") end,
              --   desc = "Run all tests in file",
              -- },
              -- [prefix .. "p"] = {
              --   function() require("neotest").run.run(vim.fn.getcwd()) end,
              --   desc = "Run all tests in project",
              -- },
              -- [prefix .. "<CR>"] = { function() require("neotest").summary.toggle() end, desc = "Test Summary" },
              -- [prefix .. "o"] = { function() require("neotest").output.open() end, desc = "Output hover" },
              -- [prefix .. "O"] = { function() require("neotest").output_panel.toggle() end, desc = "Output window" },
              ["]T"] = { function() require("neotest").jump.next() end, desc = "Next test" },
              ["[T"] = { function() require("neotest").jump.prev() end, desc = "previous test" },

              [prefix .. "t"] = { function() require("neotest").run.run(vim.fn.expand "%") end, desc = "Run File" },
              [prefix .. "T"] = {
                function() require("neotest").run.run(vim.loop.cwd()) end,
                desc = "Run All Test Files",
              },
              [prefix .. "r"] = { function() require("neotest").run.run() end, desc = "Run Nearest" },

              ["<leader>tt"] = {
                function() require("neotest").run.run(vim.fn.expand "%") end,
                desc = "Run All Test Files",
              },

              ["<leader>tr"] = {
                function() require("neotest").run.run_last() end,
                desc = "Run Last",
              },

              ["<leader>tn"] = {
                function() require("neotest").run.run() end,
                desc = "Run Nearest",
              },
              [prefix .. "l"] = { function() require("neotest").run.run_last() end, desc = "Run Last" },

              [prefix .. "s"] = { function() require("neotest").summary.toggle() end, desc = "Toggle Summary" },
              [prefix .. "o"] = {
                function() require("neotest").output.open { enter = true, auto_close = true } end,
                desc = "Show Output",
              },
              [prefix .. "O"] = {
                function() require("neotest").output_panel.toggle() end,
                desc = "Toggle Output Panel",
              },
              [prefix .. "S"] = { function() require("neotest").run.stop() end, desc = "Stop" },

              [prefix .. "tjw"] = {
                function() require("neotest").run.run { jestCommand = "jest --watch " } end,
                desc = "Run Watch",
              },
            },
          },
        },
      },
      {
        "folke/neodev.nvim",
        opts = function(_, opts)
          opts.library = opts.library or {}
          if opts.library.plugins ~= true then
            opts.library.plugins = require("astrocore").list_insert_unique(opts.library.plugins, "neotest")
          end
          opts.library.types = true
        end,
      },
    },
    config = function(_, opts)
      vim.diagnostic.config({
        virtual_text = {
          format = function(diagnostic)
            local message = diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
            return message
          end,
        },
      }, vim.api.nvim_create_namespace "neotest")
      require("neotest").setup(opts)
    end,
  },
  {
    "catppuccin/nvim",
    optional = true,
    ---@type CatppuccinOptions
    opts = { integrations = { neotest = true } },
  },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/neotest-jest", -- add dependency to neotest
      "marilari88/neotest-vitest",
    },
    opts = function(_, opts)
      if not opts.adapters then opts.adapters = {} end
      table.insert(
        opts.adapters,
        require "neotest-jest" {
          jestCommand = "npm test --",
          jestConfigFile = "jest.config.js",
          env = { CI = true },
          cwd = function(path) return vim.fn.getcwd() end,
        }
      ) -- insert neotest-jest to adapters list
      table.insert(opts.adapters, require "neotest-vitest")
    end,
  },
}
