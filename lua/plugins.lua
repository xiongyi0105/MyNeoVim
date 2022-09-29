local packer = require('packer')
packer.startup(function(use)
  -- Packer 可以管理自己本身
  use('wbthomason/packer.nvim')
  -- 你的插件列表...
  -- colorschemes--
  use('kyazdani42/blue-moon')
  use('rockerBOO/boo-colorscheme-nvim')
  use('sainnhe/edge')
  use('EdenEast/nightfox.nvim')
  use { "catppuccin/nvim", as = "catppuccin" }
  use('Th3Whit3Wolf/space-nvim')
  use('fenetikm/falcon')
  use('RRethy/nvim-base16')
  -- tokyonight
  use("folke/tokyonight.nvim")
  -- nvim-tree
  use({ 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' })
  -- bufferline
  use({ 'akinsho/bufferline.nvim', requires = { 'kyazdani42/nvim-web-devicons', 'moll/vim-bbye' } })
  -- lualine
  use({ 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons' } })
  use('arkav/lualine-lsp-progress')
  -- telescope
  use({ 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } })
  -- telescope extensions
  use('nvim-telescope/telescope-symbols.nvim')
  -- dashboard-nvim
  use('glepnir/dashboard-nvim')
  -- project
  use('ahmedkhalf/project.nvim')
  -- treesitter
  use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
  --------------------- LSP --------------------
  use('williamboman/nvim-lsp-installer')
  -- Lspconfig
  use({ 'neovim/nvim-lspconfig' })
  --use({"williamboman/mason-lspconfig.nvim"})
  -- mason
  --use ({ "williamboman/mason.nvim" })
  -- 代码格式化 (新增)
  use('mhartington/formatter.nvim')
  use({ 'jose-elias-alvarez/null-ls.nvim', requires = 'nvim-lua/plenary.nvim' })
  -- 补全引擎
  use('hrsh7th/nvim-cmp')
  -- snippet 引擎
  use('hrsh7th/vim-vsnip')
  -- 补全源
  use('hrsh7th/cmp-vsnip')
  use('hrsh7th/cmp-nvim-lsp') -- { name = nvim_lsp }
  use('hrsh7th/cmp-buffer') -- { name = 'buffer' },
  use('hrsh7th/cmp-path') -- { name = 'path' }
  use('hrsh7th/cmp-cmdline') -- { name = 'cmdline' }

  -- 常见编程语言代码段
  use('rafamadriz/friendly-snippets')
  -- indent-blankline
  use('lukas-reineke/indent-blankline.nvim')
  -- nvim-autopairs
  use('windwp/nvim-autopairs')
  -- Comment
  use('numToStr/Comment.nvim')
  -- surround
  use('ur4ltz/surround.nvim')
  use('fatih/vim-go')
  -- ui
  use("tami5/lspsaga.nvim")
end)
-- 每次保存 plugins.lua 自动安装插件
pcall(
  vim.cmd,
  [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)
