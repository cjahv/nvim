-- LSP and related plugins
return {
  {
    'neovim/nvim-lspconfig',
  },
  {
    'williamboman/mason.nvim',
    config = true,
  },
  {
    'williamboman/mason-lspconfig.nvim',
    dependencies = { 'williamboman/mason.nvim' },
    config = function()
      require('mason-lspconfig').setup {
        ensure_installed = { 'lua_ls', 'pyright', 'tsserver' },
      }
      require('mason-lspconfig').setup_handlers {
        function(server)
          require('lspconfig')[server].setup {}
        end,
      }
    end,
  },
}
