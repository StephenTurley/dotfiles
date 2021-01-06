call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'slim-template/vim-slim'
Plug 'janko/vim-test'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'isRuslan/vim-es6'
Plug 'Zaptic/elm-vim'
Plug 'dense-analysis/ale'
Plug 'leafgarland/typescript-vim'
Plug 'kchmck/vim-coffee-script'
Plug 'ianks/vim-tsx'
Plug 'tpope/vim-fugitive'
call plug#end()
" :PlugInstall

" enable slim syntax highlight
syntax enable
filetype plugin indent on

" elm-format
" npm install -g elm-format
let g:elm_format_autosave = 1

" vim-ale
let g:ale_open_list = 1                 " show errors in window
let g:ale_keep_list_window_open = 0     " keep the windows open
let g:ale_set_highlights = 1
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
let g:ale_fix_on_save = 1
let g:ale_fixers = ['eslint']
nmap <silent> ,h :ALEHover<CR>
nmap <silent> ,d :ALEGoToDefinition<CR>

" tabs
set expandtab                           " Expand TABs to spaces
set tabstop=2                           " The width of a TAB. (the width of a tab character)
set softtabstop=2                       " The number of columns for a TAB
set shiftwidth=2                        " Indent width
set smarttab hlsearch number

" fzf
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
nmap <silent> <C-p> :Files<CR>
nmap <silent> <C-t> :Ag<CR>


" vim-test
let g:test#javascript#karma#file_pattern = '\v(test|spec)\.(js|jsx|coffee)$'
let g:test#javascript#cypress#file_pattern = '\v(test|spec)\.(js|jsx|coffee)$'
let g:test#javascript#jasmine#file_pattern = '\v(test|spec)\.(js|jsx|coffee)$'
let g:test#javascript#jest#file_pattern = '\v(test|spec)\.(ts|tsx)$'

nmap <silent> ,t :TestNearest<CR>
nmap <silent> ,F :TestFile<CR>
nmap <silent> ,T :TestSuite<CR>
nmap <silent> ,l :TestLast<CR>
" nmap <silent> t<C-g> :TestVisit<CR>
"
" parceljs hot module reloads
set backupcopy=yes
set noswapfile

highlight Search term=none ctermbg=Yellow ctermfg=Black
highlight ErrorMsg term=standout ctermbg=DarkRed ctermfg=Black
highlight Error term=standout ctermbg=DarkRed ctermfg=Black
highlight SpellBad term=standout ctermbg=DarkRed ctermfg=Black
highlight Visual term=none ctermbg=LightBlue ctermfg=Black

