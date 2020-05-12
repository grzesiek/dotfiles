runtime! debian.vim

set nocompatible
filetype off
syntax on
colorscheme desert
set ignorecase
set smartcase
set completeopt=menuone,longest

" Spelling
set spelllang=pl,en

" NERDTree
let NERDTreeMapOpenInTab='<C-t>'
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-Left> :tabprev<CR>
nnoremap <S-T> :tabnew<CR>

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set t_Co=8
command JsonPretty :%!python -m json.tool

" FZF
nnoremap <C-P> :FZF<CR>

set backupdir=/tmp
set directory=/tmp

" vim-ruby
let g:rubycomplete_buffer_loading = 0
let g:rubycomplete_classes_in_global = 0
let g:rubycomplete_rails = 0
let g:rubycomplete_load_gemfile = 0

" extra whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/

" status bar
set laststatus=2

" vim-go
nnoremap <C-G> :GoDeclsDir<CR>
nnoremap <C-F> :GoDef<CR>
nnoremap <C-H> :GoDoc<CR>
nnoremap <C-I> :GoImports<CR>
nnoremap <C-B> :GoBuild<CR>

" Terraform
let g:terraform_fmt_on_save=1

" Vundle: git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'othree/html5.vim'
Plugin 'tpope/vim-haml'
Plugin 'kchmck/vim-coffee-script'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive.git'
Plugin 'keith/rspec.vim'
Plugin 'junegunn/fzf'
Plugin 'bogado/file-line'
Plugin 'pangloss/vim-javascript'
Plugin 'storyn26383/vim-vue'
Plugin 'fatih/vim-go'
Plugin 'hashivim/vim-terraform'

call vundle#end()
filetype plugin indent on
