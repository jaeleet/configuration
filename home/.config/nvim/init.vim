syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set ai
set number
set hlsearch
set ruler
set cc=80
highlight Comment ctermfg=green

filetype plugin indent on

map <F2> :SyntasticReset<CR>
map <F5> :!xclip -sel clip %<CR><CR>

call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-syntastic/syntastic'
Plug 'nbouscal/vim-stylish-haskell'
Plug 'Raimondi/delimitMate'
Plug 'jaeleet/molokai'
call plug#end()

colo molokai

let g:syntastic_go_checkers = ['go', 'gofmt', 'govet', 'golint']
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_checkers = ['python', 'pylint']
let g:syntastic_hs_checkers = ['hlint', 'hdevtools']

let g:syntastic_auto_jump = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

