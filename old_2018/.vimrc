syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler
highligh Comment ctermfg=green

set rtp+=~/.vim/pack/vendor/start/nerdtree

" Open a NERDtree automatically when vim starts up
autocmd VimEnter * NERDTree

" When open change the focus to the file (and not the NERDTree)
autocmd VimEnter * NERDTree | wincmd p

" Start NERDTree when Vim is started whitout file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Start NERDTree, unless a file or session is specified, eg. vim -S session_file.vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in')
\ && v:this_session == '' | NERDTree | endif

" Start NERDTree when Vim starts With a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) 
\&& !exists('s:std_in') | execute 'NERDTree' argv()[0] | wincmd p | enew |
\ execute 'cd '.argv()[0] | endif

" Exit Vim if NERDtree if the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') 
\ && b:NERDTree.isTabTree() | quit | endif

" If another buffer tries to replace NERDTree, put in the other window, and bring back NERDtree
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~'NERD_tree_\d\+' && 
\ winnr('$') > 1 | let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | 
\ execute 'buffer'.buf | endif

" (Alt + F) open nerd tree
nnoremap <C-n> <ESC>:NERDTreeToggle<CR>

