" This is from tonybtw tutorial :3 https://www.tonybtw.com/tutorial/vim/

" Recomended to add in the yegappan/lsp repo

let lspOpts = #{autoHighlightDiags: v:true, autoComplete: v:true}
autocmd User LspSetup call LspOptionsSet(lspOpts)

let lspServers = [
    \ #{
    \    name: 'clangd',
    \    filetype: ['c', 'cpp'],
    \    path: '/usr/bin/clangd',
    \    args: ['--background-index']
    \  },
    \ #{
    \    name: 'typescriptlang',
    \    filetype: ['javascript', 'typescript', 'javascriptreact', 'typescriptreact'],
    \    path: '/home/rynzler/.nvm/versions/node/v24.13.0/bin/typescript-language-server',
    \    args: ['--stdio'],
    \  },
    \ #{
    \    name: 'pyright',
    \    filetype: 'python',
    \    path: '/usr/local/bin/pyright-langserver',
    \    args: ['--stdio'],
    \    workspaceConfig: #{
    \      python: #{
    \        pythonPath: '/usr/bin/python3.13'
    \      }
    \    }
    \  },
    \ #{
    \   name: 'postgrestools',
    \   filetype: ['sql'],
    \   path: '/usr/local/bin/postgrestools',
    \   args: ['lsp-proxy'],
    \ },
    \ #{
    \   name: 'marksman',
    \   filetype: ['markdown'],
    \   path: '/usr/local/bin/marksman',
    \   args: ['server'],
    \ }
    \
\ ]

" I don't know how to follow a tutorial
autocmd User LspSetup call LspAddServer(lspServers)

" Key mappings
nnoremap gd :LspGotoDefinition<CR>
nnoremap gr :LspShowReferences<CR>
nnoremap K  :LspHover<CR>
nnoremap gl :LspDiag current<CR>
nnoremap <leader>nd :LspDiag next \| LspDiag current<CR>
nnoremap <leader>pd :LspDiag prev \| LspDiag current<CR>
" inoremap <silent> <C-Space> <C-x><C-o> this is for manual popup suggestions

" Custom diagnostic sign characters
autocmd User LspSetup call LspOptionsSet(#{
    \   diagSignErrorText: '✘',
    \   diagSignWarningText: '▲',
    \   diagSignInfoText: '»',
    \   diagSignHintText: '⚑',
    \ })
