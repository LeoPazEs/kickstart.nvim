-- `neodev` configures Lua LSP for your Neovim config, runtime and plugins
-- used for completion, annotations and signatures of Neovim apis
return {
  'folke/neodev.nvim',
  opts = {},
  config = function()
    require('neodev').setup { library = { plugins = { 'nvim-dap-ui' }, types = true } }
  end,
}
