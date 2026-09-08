let mapleader = " "

nnoremap <leader>cd :Ex<CR>

" FZF keymaps
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fh :History<CR>
nnoremap <leader>fb :Buffers<CR>
" Rg search a string in all the files of the current dir
nnoremap <leader>fg :Rg<Space>

" Smart Tab : Accepts the highlighted option, OR grabs the first option if none is highlighted
inoremap <expr> <Tab> pumvisible() ? (complete_info()['selected'] == -1 ? "\<C-n>\<C-y>" : "\<C-y>") : "\<Tab>"
