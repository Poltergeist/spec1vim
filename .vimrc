call pathogen#infect()
call pathogen#helptags()
syntax on
:filetype plugin on
:set ff=unix
:set relativenumber
:set cursorline
:filetype plugin indent on
:set ai
:set mouse=a
:set nobackup
:set nowritebackup
:set noswapfile
:set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
:set listchars=tab:\|\ ,trail:~
:set list
set tabstop=2
set shiftwidth=2
set expandtab

" Autocmd for PHP
autocmd FileType php noremap <C-S-K> :!phpcs --standard=skin %<CR>

" Autocmd to remove whitespaces on :w
autocmd BufWritePre * :%s/\s\+$//e
"autocmd BufWritePre * :set tabstop=4 | :%retab! | :set tabstop=8

" Autocmd for CoffeeScript
" au BufNewFile,BufReadPost *.coffee setl foldmethod=indent
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
au BufNewFile,BufReadPost *.coffee setl tabstop=2

au BufNewFile,BufReadPost *.styl set filetype=css
au BufNewFile,BufReadPost *.jeco set filetype=html
au BufNewFile,BufReadPost *.eco set filetype=html

"use relative numbers in normal
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

"Mappings
"added mapleader to ,
:let mapleader = ","

"CTRLP config
let g:ctrlp_map = '<c-p>'

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

"JSLINT
"filetype plugin on
"let g:JSHintHighlightErrorLine = 1

let g:syntastic_javascript_checkers = [ 'gjslint' ]


" Highlight too long lines
nnoremap <Leader>H :call<SID>LongLineHLToggle()<cr>
hi OverLength ctermbg=none cterm=none
match OverLength /\%>80v/
fun! s:LongLineHLToggle()
 if !exists('w:longlinehl')
  let w:longlinehl = matchadd('ErrorMsg', '.\%>80v', 0)
  echo "Long lines highlighted"
 else
  call matchdelete(w:longlinehl)
  unl w:longlinehl
  echo "Long lines unhighlighted"
 endif
endfunction

function! Inc(x)
    let a:x[0] += 1
    return a:x[0]
endfunction

