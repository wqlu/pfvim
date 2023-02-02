-- author: glepnr https://github.com/glepnir
-- date: 2022-07-02
-- License: MIT

local package = require('core.pack').package
local conf = require('modules.completion.config')

local enable_lsp_filetype = {
  'go',
  'lua',
  'sh',
  'c',
  'cpp',
  'javascript',
  'javascriptreact',
  'json',
  'python',
  'typescript',
  'typescriptreact',
  'typescript.tsx'
}
package({
  'neovim/nvim-lspconfig',
  -- used filetype to lazyload lsp
  -- config your language filetype in here
  ft = enable_lsp_filetype,
  config = conf.nvim_lsp,
  dependencies = {
    { 'glepnir/lspsaga.nvim', config = conf.lspsaga }
  },
})

package({
  'hrsh7th/nvim-cmp',
  event = 'InsertEnter',
  config = conf.nvim_cmp,
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-buffer',
  },
})

package({
  'L3MON4D3/LuaSnip',
  event = 'InsertCharPre',
  config = conf.lua_snip,
  dependencies = { 'saadparwaiz1/cmp_luasnip' }
})
package({ 'windwp/nvim-autopairs', event= 'InsertEnter', config = conf.auto_pairs })
