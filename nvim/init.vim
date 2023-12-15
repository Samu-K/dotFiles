" Settings
:set number
:set shiftwidth=2
:set tabstop=4
:set expandtab
:set mouse=a
:set showmatch
:set autoindent
:set cc=80
:set clipboard=unnamedplus
:set shortmess-=F
:set termguicolors

" Load plugins
call plug#begin()

" Visual plugs
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'ryanoasis/vim-devicons'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/preservim/tagbar'
Plug 'lewis6991/gitsigns.nvim'
Plug 'https://github.com/windwp/nvim-autopairs'

" Filesearching
Plug 'https://github.com/nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-telescope/telescope.nvim'

" LSP,DAP,Lint manager
Plug 'williamboman/mason.nvim'
Plug 'WhoIsSethDaniel/mason-tool-installer.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

" Debubbing
Plug 'mfussenegger/nvim-dap'
Plug 'jay-babu/mason-nvim-dap.nvim'
Plug 'rcarriga/nvim-dap-ui'
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'nvim-lua/plenary.nvim'

" Testing
Plug 'nvim-neotest/neotest'
Plug 'folke/trouble.nvim'

" Syntax highlight and autocomplete
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'https://github.com/neovim/nvim-lspconfig'
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

" Linting
Plug 'mfussenegger/nvim-lint'
call plug#end()

" Configs for larger modules written in lua
lua require('treesitter')
lua require('misConf')
lua require('lspconf')
lua require('dapConfigs')
lua require('dapAdps')
lua require('cmpConf')
lua require('lintConf')

" settings for lsc
let g:lsc_enable_autocomplete = v:false

" Start some plugins on startup
" autocmd VimEnter * TagbarToggle

" Keybindings
nmap <leader>tb :TagbarToggle<CR>
nnoremap <leader>xx <cmd>TroubleToggle document_diagnostics<cr>

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <leader>gD <cmd>lua require'telescope.builtin'.lsp_definitions()<cr>
nnoremap <leader>bb <cmd>Telescope buffers<cr>

"Keybind to split windows
nnoremap <leader>ss :set splitright<CR>:vsplit<CR>:split<CR>


" Colorscheme
:colorscheme catppuccin-mocha
