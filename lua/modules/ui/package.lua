-- author: glepnr https://github.com/glepnir
-- date: 2022-07-02
-- License: MIT

local package = require('core.pack').package
local conf = require('modules.ui.config')

package({ 'sainnhe/gruvbox-material', config = conf.gruvbox })

package({ 'xiyaowong/nvim-transparent', config = conf.transparent })

package({
  'glepnir/galaxyline.nvim',
  branch = 'main',
  config = conf.galaxyline,
  dependencies = 'kyazdani42/nvim-web-devicons',
})

package({
  'kyazdani42/nvim-tree.lua',
  cmd = 'NvimTreeToggle',
  config = conf.nvim_tree,
  dependencies = 'kyazdani42/nvim-web-devicons',
})

package({
  'kdheepak/tabline.nvim',
  config = conf.tabline,
  dependencies = 'kyazdani42/nvim-web-devicons'
})

package({
  'lukas-reineke/indent-blankline.nvim',
  config = conf.indent_blankline
})
