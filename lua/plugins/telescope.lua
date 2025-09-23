return {
  {
    "nvim-telescope/telescope.nvim", 
    dependencies = { 
	'nvim-lua/plenary.nvim', 
	'nvim-telescope/telescope-live-grep-args.nvim',
	'natecraddock/workspaces.nvim'

    },
    opts = {
    },

    config = function()
      local telescope = require('telescope')
      telescope.load_extension("workspaces")

      local builtin = require('telescope.builtin')
      -- vim.keymap.set({'n', 'v'}, '<leader>fg', builtin.grep_string)
      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
      vim.keymap.set('n', '<leader>fF', builtin.git_files, { desc = 'Telescope find files' })
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
      vim.keymap.set('n', '<leader>fG', builtin.grep_string, { desc = 'Telescope live grep' })
      vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
      vim.keymap.set('n', '<leader>fo', builtin.oldfiles, { desc = 'Telescope Old Files' })
      vim.keymap.set('n', '<leader>fw', ":Telescope workspaces<cr>", { desc = 'Telescope workspaces' })
    end
  }
}
