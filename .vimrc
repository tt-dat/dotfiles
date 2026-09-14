" GENERAL {{{
" not vi-compatible
set nocompatible

" INDENT {{{
" enable file type detection
" autoload plugins for that file type
" auto indent
filetype plugin indent on
	autocmd!
	autocmd FileType *.c gg=G
" }}}

" enable lexical highlighting
syntax enable

" show current line and column, and relative position in file 
set ruler


" using relative line number
set number
set relativenumber



" default case-insensitivity
set noignorecase

" default highlight first search instance found
" excellent for jump
set incsearch

"set statusline=%.20F
"set statusline+=%=
"set statusline+=%l
"set statusline+=/
"set statusline+=%L

" briefly show matching paren...
set showmatch
set matchtime=5

set tabstop=4 shiftwidth=4 softtabstop=4 



" }}}


" LEADER {{{
let mapleader = "-"
let maplocalleader = "\\"
nnoremap <LocalLeader>ev :vsp $MYVIMRC<cr>
nnoremap <LocalLeader>sv :source $MYVIMRC<cr>
nnoremap <LocalLeader>fo }i" }}}<esc>{i"  {{{<esc>3hi
" }}}



" Vimscript seting {{{
augroup filetype_vim 
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}


" INSERT_MODE {{{
" using jk instead of <esc> in insert mode
inoremap jk <esc>
inoremap <c-u> <esc>gUiwea
" }}}





" COMMAND_LINE_MODE  {{{


" using %% to expand to directory of current buffer
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" easier Ex command retrieval
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" longer cmd history
set history=1000

" }}}


" WINDOW  {{{

" new window at right or bottom instead of left or above
set splitright
set splitbelow

" easier window navigation
nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
" }}}

" RIPGREP  {{{
" using ripgrep instead of grep
" print and jump directly to exact column, not beginning of line of match
set grepprg=rg\ --no-heading\ --line-number\ --column\ $*\ /dev/null
" set format to display column
set grepformat=%f:%l:%c:%m

" use Rg instead of grep to execute ripgrep
command! -nargs=+ Rg execute 'grep ' . <q-args>
" }}}

" QUICKFIX LIST {{{

" jump to position described at current line when cursor moved
" <cr> to update that buffer 
" <c-w><c-p> jump to previous window, a.k.a quickfix_list window
autocmd Filetype qf autocmd CursorMoved <buffer> execute "normal \<cr>\<c-w>\<c-p>"
" }}}
