return {
  {
    'nvim-lualine/lualine.nvim',
    -- dependencies = {},
    opts = {
      options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
          statusline = { "NvimTree" },
          winbar = { "NvimTree" },
        },
        ignore_focus = {},
        always_divide_middle = true,
        always_show_tabline = true,
        globalstatus = false,
        refresh = {
          statusline = 100,
          tabline = 100,
          winbar = 100,
        }
      },
      sections = {
        lualine_a = { 'mode' },
        -- lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_b = { 'diff', 'diagnostics' },
        lualine_c = {
          {
            'filename',
            path = 1
          }
        },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
        -- lualine_z = {
        --   {
        --     require("noice").api.status.message.get_hl,
        --     cond = require("noice").api.status.message.has,
        --   },
        --   {
        --     require("noice").api.status.command.get,
        --     cond = require("noice").api.status.command.has,
        --     color = { fg = "#ff9e64" },
        --   },
        --   {
        --     require("noice").api.status.mode.get,
        --     cond = require("noice").api.status.mode.has,
        --     color = { fg = "#ff9e64" },
        --   },
        --   {
        --     require("noice").api.status.search.get,
        --     cond = require("noice").api.status.search.has,
        --     color = { fg = "#ff9e64" },
        --   },
        -- }
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {
          {
            'filename',
            path = 1
          }
        },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {}
    },
  }
}
