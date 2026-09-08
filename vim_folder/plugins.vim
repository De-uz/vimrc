call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'yegappan/lsp'
Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }
Plug 'jiangmiao/auto-pairs'

call plug#end()
