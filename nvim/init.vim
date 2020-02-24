
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" plug begin """
call plug#begin(stdpath('data') . './plugged')

Plug 'bling/vim-bufferline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'fneu/breezy'
Plug 'tpope/vim-fugitive'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" initialize plug """
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" plugin: airline """
let g:airline_powerline_fonts = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""" plugin: deoplete """
let g:deoplete#enable_at_startup = 1

""""""""""""""""""""""""""""""""""""""""""" language server protocol client """

" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'python': ['/usr/bin/pyls']
    \ }

" map some of the LSP actions
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" my prefs """
" edit stuff
set nu
set expandtab
set shiftwidth=4
set softtabstop=4

" appearance
set background=light
set termguicolors
colorscheme breezy
