" Settings
:set number
:set shiftwidth=2
:set tabstop=2
:set expandtab
:set mouse=a
:set showmatch
:set autoindent
:set cc=80
:set clipboard=unnamedplus
:set shortmess-=F
:set termguicolors
:set number

" source files for plugins and keybinds
source ~/.config/nvim/plugs.vim
source ~/.config/nvim/keyBinds.vim

" Colorscheme
:colorscheme catppuccin-mocha

" Configs for larger modules written in lua
lua require('treesitter')
lua require('misConf')
lua require('lspconf')
lua require('cmpConf')
lua require('lintConf')
lua require('felineConf')
lua require('treeConf')

" settings for lsc
let g:lsc_enable_autocomplete = v:false
