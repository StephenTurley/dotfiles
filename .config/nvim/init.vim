call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'kien/ctrlp.vim'
Plug 'slim-template/vim-slim'
Plug 'janko/vim-test'
Plug 'mattn/emmet-vim'
Plug 'isRuslan/vim-es6'
Plug 'Zaptic/elm-vim'
Plug 'dense-analysis/ale'
Plug 'leafgarland/typescript-vim'
call plug#end()
" :PlugInstall

" enable slim syntax highlight
syntax enable
filetype plugin indent on

" elm-format
" npm install -g elm-format
let g:elm_format_autosave = 1

" vim-ale
let g:ale_open_list = 0                 " show errors in window
let g:ale_keep_list_window_open = 0     " keep the windows open
let g:ale_set_highlights = 0
let g:ale_completion_enabled = 1
let g:ale_completion_tsserver_autoimport = 1

" tabs
set expandtab                           " Expand TABs to spaces
set tabstop=4                           " The width of a TAB. (the width of a tab character)
set softtabstop=4                       " The number of columns for a TAB
set shiftwidth=4                        " Indent width
set smarttab hlsearch number

" respect the .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']

" color scheme
colorscheme darkblue

nmap <silent> ,t :TestNearest<CR>
nmap <silent> ,F :TestFile<CR>
nmap <silent> ,T :TestSuite<CR>
nmap <silent> ,l :TestLast<CR>
" nmap <silent> t<C-g> :TestVisit<CR>
"
" parceljs hot module reloads
set backupcopy=yes

set noswapfile
