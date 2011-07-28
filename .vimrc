syntax on
:set number
:filetype plugin on
" Map Ctrl N to NerdTree
map <C-n> <esc>:NERDTreeToggle<enter>
autocmd FileType php noremap <C-S-K> :!phpcs --standard=skin %<CR>
:set ff=unix
:set cursorline
call pathogen#infect()
filetype plugin indent on
