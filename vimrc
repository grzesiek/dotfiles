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
let NERDTreeMapOpenInTab='<C-t>'
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-Left> :tabprev<CR>
nnoremap <S-T> :tabnew<CR>
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
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set t_Co=8

" let g:rubycomplete_buffer_loading = 1
" let g:rubycomplete_classes_in_global = 1
" let g:rubycomplete_rails = 1
" let g:rubycomplete_load_gemfile = 1

set backupdir=~/.vim/backup/
set directory=~/.vim/backup/

" Vundle: git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim

" indentation
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

" extra whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/

" status bar
set laststatus=2

" Plugins
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tobyS/pdv'
Plugin 'tobyS/vmustache'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'evidens/vim-twig'
Plugin 'tomtom/tcomment_vim'
Plugin 'othree/html5.vim'
Plugin 'tpope/vim-haml'
Plugin 'kchmck/vim-coffee-script'
Plugin 'fatih/vim-go'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive.git'
Plugin 'keith/rspec.vim'
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()
