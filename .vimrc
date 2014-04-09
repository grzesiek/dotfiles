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
filetype on
filetype plugin indent on
au FileType ruby setl tabstop=2 shiftwidth=2 softtabstop=2 expandtab
au FileType eruby setl tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set autoindent

" Vundle: git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" Bundles
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-bundler'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tobyS/pdv'
Bundle 'tobyS/vmustache'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'jQuery'
Bundle 'evidens/vim-twig'
Bundle 'tomtom/tcomment_vim'
Bundle 'othree/html5.vim'
