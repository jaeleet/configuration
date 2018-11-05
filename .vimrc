syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set ai
set number
set hlsearch
set ruler
highlight Comment ctermfg=green

colo molokai
let g:molokai_original = 1
set background=dark

filetype plugin indent on

call plug#begin('~/.vim/plugged')
Plug 'vim-syntastic/syntastic'
Plug 'alx741/vim-hindent'
Plug 'jaeleet/molokai'
call plug#end()

let g:syntastic_go_checkers = ['go', 'gofmt', 'govet', 'golint']
let g:syntastic_c_checkers = ['splint', 'gcc']
let g:syntastic_cc_checkers = ['cpplint', 'gcc']
let g:syntastic_cpp_checkers = ['cpplint', 'gcc']
let g:syntastic_cpp_cpplint_exec = 'cpplint'
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_hs_checkers = ['hlint', 'hdevtools']

let g:syntastic_auto_jump = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

