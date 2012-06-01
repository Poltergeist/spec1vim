call pathogen#infect()
call pathogen#helptags()
syntax on
:set number
:filetype plugin on
:set ff=unix
:set cursorline
:filetype plugin indent on
:set ai
:set mouse=a
:set nobackup
:set nowritebackup
:set noswapfile
:set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" Autocmd for PHP
autocmd FileType php noremap <C-S-K> :!phpcs --standard=skin %<CR>

" Autocmd to remove whitespaces on :w
autocmd BufWritePre * :%s/\s\+$//e

" Autocmd for CoffeeScript
" au BufNewFile,BufReadPost *.coffee setl foldmethod=indent
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
au BufNewFile,BufReadPost *.coffee setl tabstop=2

au BufNewFile,BufReadPost *.styl set filetype=css
au BufNewFile,BufReadPost *.jeco set filetype=html
au BufNewFile,BufReadPost *.eco set filetype=html

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
colorscheme railscasts
