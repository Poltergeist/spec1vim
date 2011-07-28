call pathogen#infect()
call pathogen#helptags()
syntax on
:set number
:filetype plugin on
autocmd FileType php noremap <C-S-K> :!phpcs --standard=skin %<CR>
:set ff=unix
:set cursorline
:filetype plugin indent on
:set ai
:set mouse=a

"Mappings
"added mapleader to ,
:let mapleader = ","

" Map Ctrl N to NerdTree
map <C-n> <esc>:NERDTreeToggle<enter>

" Movement Mappings
" * * * * * * * * * * * * * * * * * * * *
" Smart way to switch windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" Arrows for switching Buffers
map <right> :bn<cr>
map <left> :bp<cr>
