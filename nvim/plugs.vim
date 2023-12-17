
" Load plugins
call plug#begin()

" Visual
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'ap/vim-css-color'
Plug 'preservim/tagbar'
Plug 'lewis6991/gitsigns.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'feline-nvim/feline.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'stevearc/dressing.nvim'

" Filesearch
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-telescope/telescope.nvim'

" LSP, lint manager
Plug 'williamboman/mason.nvim'
Plug 'WhoIsSethDaniel/mason-tool-installer.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'mfussenegger/nvim-lint'

" Test and debug
Plug 'nvim-neotest/neotest'
Plug 'folke/trouble.nvim'

" Syntax highlight and autocomplete
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/vim-vsnip'
Plug 'onsails/lspkind.nvim'
Plug 'hrsh7th/cmp-vsnip'
Plug 'terrortylor/nvim-comment'
Plug 'delphinus/cmp-ctags'

call plug#end()
