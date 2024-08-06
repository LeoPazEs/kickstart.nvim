return {
  'mfussenegger/nvim-dap-python',
  config = function()
    local mason_registry = require 'mason-registry'
    local debugpy = mason_registry.get_package 'debugpy'
    local debugpy_path = debugpy:get_install_path() .. '/venv/bin/python'

    require('dap-python').setup(debugpy_path)
    vim.api.nvim_set_keymap('n', '<leader>dn', '<cmd>lua require("dap-python").test_method()<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>df', '<cmd>lua require("dap-python").test_class()<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('v', '<leader>ds', '<ESC><cmd>lua require("dap-python").debug_selection()<CR>', { noremap = true, silent = true })
  end,
}
