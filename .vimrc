runtime! debian.vim
set nocp

syntax on
colorscheme desert

"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Spelling
set spelllang=pl,en

" NERDTree
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-Left> :tabprev<CR>
nnoremap <C-T> :tabnew<CR>
" nnoremap ty :tabnext<CR>
" nnoremap tr :tabprev<CR>
" nnoremap tn :tabnew<CR>
" nnoremap tq :tabclose<CR>
" nnoremap tp :tabfirst<CR>

" PDV
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates"
nnoremap <C-p> :call pdv#DocumentCurrentLine()<CR>

set nocompatible
filetype off
filetype plugin indent on

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" Bundles
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-bundler'
Bundle 'tobyS/pdv'
Bundle 'tobyS/vmustache'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'jQuery'
Bundle 'evidens/vim-twig'
Bundle 'tomtom/tcomment_vim'


