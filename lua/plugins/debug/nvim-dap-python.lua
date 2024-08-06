return {
  'mfussenegger/nvim-dap-python',
  config = function()
    local mason_registry = require 'mason-registry'
    local debugpy = mason_registry.get_package 'debugpy'
    local debugpy_path = debugpy:get_install_path() .. '/venv/bin/python'

    require('dap-python').setup(debugpy_path)
  end,
}
