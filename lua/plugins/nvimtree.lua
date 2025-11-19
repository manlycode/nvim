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
        highlight_hidden = "all",
        hidden_display = "all",
        group_empty = true,
      },
      filters = {
        git_ignored = false,
        dotfiles = false,
      },
    },
    -- keys = {
    -- { "<leader>nnn", "<cmd>NvimTreeToggle<cr>", desc = "NvimTree Toggle" },
    -- { "<leader>nnf", "<cmd>NvimTreeFindFile<cr>", desc = "NvimTree Find File" },
    -- },
  }
}
