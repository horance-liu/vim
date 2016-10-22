" encoding
set encoding=utf-8

" pathogen
call pathogen#infect()
syntax enable
syntax on

filetype on
filetype plugin indent on

" auto reload file when file was changed
set autoread

" wild menu
set wildmenu

function Maximize_Window()
  silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz 
endfunction

set ruler
set cursorline

" scheme 
" set background=dark
" colorscheme solarized

" tab config
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
" set paste

" show line number
set number

" highline search result
set hlsearch
set incsearch

" set ignorecase

set showcmd
set nowrap

set nocompatible
set backspace=2

" set tags+=/usr/include/glibc-2.14/glibc.tags
" set tags+=/usr/include/stdcpp_for_ctags/stdc++.tags

autocmd BufReadPost *
\ if line("'\"") > 0 && line ("'\"") <= line("$") | 
\ exe "normal g'\"" |
\ endif

" define leader for shortcut
" let mapleader=";"

" CommandT config
map <Leader>ct :CommandT<CR>

" NERDTree config
let NERDTreeWinSize=25

" open a NERDTree automatically when vim starts up
" autocmd vimenter * NERDTree

" open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" map a specific key or shortcut to open NERDTree
map <Leader>fl :NERDTreeToggle<CR>

" taglist
let tagbar_left=1
nnoremap <Leader>tl :TagbarToggle<CR>
let tagbar_width=25

set completeopt=longest,menu

nnoremap <Leader>sp :Grep<CR>
nnoremap <Leader>gs <C-W><C-W>
imap <Leader><TAB> <C-X><C-O>

set foldmethod=syntax
set foldmethod=indent

set nofen

" switch between header and source files
function! SwitchHeaderAndSrc()
  if expand("%:e") == "cpp"
    exe "split" fnameescape(expand("%:p:r:s?src?include?").".h")
  elseif expand("%:e") == "h"
    exe "split" fnameescape(expand("%:p:r:s?include?src?").".cpp")
  endif
endfunction

nmap <Leader>o :call SwitchHeaderAndSrc()<CR>

"powerline{
set laststatus=2
set guifont=PowerlineSymbols\ for\ Powerline
set t_Co=256
let g:Powerline_symbols='fancy'
"}

" ctags 
let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1

" neocomplte
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'


" CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/build/*

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" minibufexpl
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 

" make
"set makeprg=bash\ build.sh

" vim-markdown
let g:markdown_fenced_languages = ['cpp', 'java', 'scala', 'ruby', 'bash=sh']
