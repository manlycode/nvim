return {
  {
    "nvim-tree/nvim-tree.lua",
    keys = {
      { "<leader>nnn", "<cmd>NvimTreeToggle<cr>", desc = "NvimTree Toggle" },
      { "<leader>nnf", "<cmd>NvimTreeFindFile<cr>", desc = "NvimTree Find File" },
    },
    opts = {
	    sync_root_with_cwd = true,
	    sort = {
		    sorter = "case_sensitive",
	    },
	    view = {
		    width = 30,
	    },
	    renderer = {
		    group_empty = true,
	    },
	    filters = {
		    dotfiles = true,
	    },
    }
  }
}
