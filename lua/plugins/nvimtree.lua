return {
  {
    "nvim-tree/nvim-tree.lua",
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
