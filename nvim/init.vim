
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

" code completion stuff, https://github.com/neoclide/coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'clangd/coc-clangd',            {'do': ':CocInstall coc-clangd', 'for': ['cpp']}
Plug 'fannheyward/coc-markdownlint', {'do': ':CocInstall coc-markdownlint', 'for': ['markdown']}
Plug 'neoclide/coc-python',          {'do': ':CocInstall coc-python', 'for': ['python']}
Plug 'neoclide/coc-tsserver',        {'do': ':CocInstall coc-tsserver', 'for': ['typescript']}
Plug 'voldikss/coc-cmake',           {'do': ':CocInstall coc-cmake', 'for': ['cmake']}
"Plug 'neoclide/coc-yaml', {'do': ':CocInstall coc-yaml', 'for': ['yaml']}

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
