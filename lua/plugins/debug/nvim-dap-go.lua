return {
  'leoluz/nvim-dap-go',
  dependencies = { 'mfussenegger/nvim-dap' },
  config = function()
    require('dap-go').setup {
      delve = {
        -- On Windows delve must be run attached or it crashes.
        -- See https://github.com/leoluz/nvim-dap-go/blob/main/README.md#configuring
        detached = vim.fn.has 'win32' == 0,
      },
      dap_configurations = {
        {
          type = 'go',
          name = 'Debug Package (Arguments)',
          request = 'launch',
          program = '${fileDirname}',
          args = require('dap-go').get_arguments,
        },
      },
    }
  end,
}
