" Make the lightline visible
set laststatus=2

colorscheme moonfly
" Colors the cursor
let g:moonflyCursorColor = v:true

let g:moonflyNormalPmenu = v:true

" Set the colorscheme for lightline
let g:lightline = {
      \ 'colorscheme': 'deus',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \   'filename': 'FullPath',
      \ },
      \ }

function! FullPath()
    return expand('%:.')
endfunction









