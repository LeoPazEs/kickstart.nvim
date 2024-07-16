return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = true,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    enabled = vim.g.have_nerd_font,
  },
  config = function()
    require('nvim-tree').setup {
      disable_netrw = true,
      hijack_netrw = true,
      open_on_tab = false,
      hijack_cursor = false,
      update_cwd = false,
      diagnostics = {
        enable = true,
      },
      update_focused_file = {
        enable = true,
        update_cwd = true,
        ignore_list = {},
      },
      system_open = {
        cmd = nil,
        args = {},
      },
      view = {
        width = 30,
        side = 'left',
      },
      git = {
        enable = true,
        ignore = false,
        timeout = 500,
      },
    }
    -- Map keys to open nvim-tree
    vim.api.nvim_set_keymap('n', '<c-e>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
  end,
}
