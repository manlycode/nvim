return {
  {
    'nvim-neotest/neotest',
    lazy = true,
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      "ChristianChiarulli/neovim-codicons",
      "jfpedroza/neotest-elixir",
      "olimorris/neotest-rspec",
    },

    config = function()
      require("neotest").setup({
        consumers = {
          overseer = require("neotest.consumers.overseer"),
        },
        overseer = {
          enabled = true,
          -- When this is true (the default), it will replace all neotest.run.* commands
          force_default = false,
        },
        status = { virtual_text = true },
        output = { open_on_run = true },
        quickfix = {
          open = function()
            require("trouble").open({ mode = "quickfix", focus = false })
          end,
        },
        adapters = {

          require("neotest-elixir"),
          require("neotest-rspec")({
            rspec_cmd = function()
              vim.totable({
                "/Users/manlycode/.asdf/shims/bundle",
                "exec",
                "rspec"
              })

              -- return vim.tbl_flatten({
              --   "/Users/manlycode/.asdf/shims/bundle",
              --   "exec",
              --   "rspec"
              -- })
            end
          })
        }
      })
    end,
    keys = {
      { "<leader>tl", "<cmd>echo 'hello line'<cr>", desc = "Run test at line", mode = "n" },
      {
        "<leader>ts",
        function()
          require("neotest").summary.toggle()
        end,
        desc = "Toggle test summary",
        mode = "n"
      },
      {
        "<leader>tf",
        function()
          require("neotest").run.run(vim.fn.expand("%"))
          require("neotest").summary.open()
        end,
        desc = "Run test at line",
        mode = "n"
      }
    }
  }
}
