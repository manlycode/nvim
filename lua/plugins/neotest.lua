return {
  {
    'nvim-neotest/neotest',
    lazy = true,
    -- opts = {},
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      "olimorris/neotest-rspec",
    },

    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-rspec")({
            rspec_cmd = function()
              return vim.tbl_flatten({
                "/Users/manlycode/.asdf/shims/bundle",
                "exec",
                "rspec"
              })
            end
          })
        },
      })
    end,

    keys = {
      {"<leader>tl", "<cmd>echo 'hello line'<cr>", desc = "Run test at line", mode = "n"},
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
        end, 
        desc = "Run test at line", 
        mode = "n"
      }
    }
  }
}
