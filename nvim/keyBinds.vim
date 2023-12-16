" Tagbar
nnoremap <leader>tb :TagbarToggle<CR>

" Trouble
nnoremap <leader>xx <cmd>TroubleToggle document_diagnostics<cr>

" Nvim Tree
nnoremap <leader>ft <cmd>NvimTreeToggle <cr>

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>bb <cmd>Telescope buffers<cr>
nnoremap <leader>gD <cmd>lua require'telescope.builtin'.lsp_definitions()<cr>

" Vim
nnoremap <leader>ss :set splitright<CR>:vsplit<CR>:split<CR>
nnoremap <leader>ll :set relativenumber!<CR>
