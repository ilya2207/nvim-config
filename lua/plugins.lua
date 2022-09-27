return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	--Themes
	use { "ellisonleao/gruvbox.nvim" }
	use 'navarasu/onedark.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'folke/tokyonight.nvim'

  use {
  'romgrk/barbar.nvim',
  requires = {'kyazdani42/nvim-web-devicons'}
  }
  use {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  --LSP
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use "williamboman/nvim-lsp-installer"
  use("neovim/nvim-lspconfig")
  use("hrsh7th/cmp-nvim-lsp")
  use("nvim-treesitter/nvim-treesitter")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/nvim-cmp")
  use("nvim-telescope/telescope.nvim")
  use({
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
})
end)
