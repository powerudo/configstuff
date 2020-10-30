
"""""""""""""""""""""""""""""""""""" https://github.com/junegunn/vim-plug "

call plug#begin(stdpath('data') . './plugged')

" UI stuff
Plug 'bling/vim-bufferline'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" theming
Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'fneu/breezy'

" git plugin
Plug 'tpope/vim-fugitive'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""" plugin: airline "
let g:airline_powerline_fonts = 1

" edit stuff
set nu
set expandtab
set shiftwidth=4
set softtabstop=4

" appearance
set background=light
set termguicolors
colorscheme breezy
