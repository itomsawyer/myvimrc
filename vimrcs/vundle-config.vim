set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim_runtime/bundle/vundle/
call vundle#rc("~/.vim_runtime/bundle/")

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

"" My Bundles here:
""
"" original repos on github
"Bundle 'tpope/vim-fugitive'
Bundle 'easymotion/vim-easymotion'
Bundle 'scrooloose/nerdtree'
Bundle 'ervandew/supertab'
Bundle 'preservim/tagbar'
Bundle 'ctrlpvim/ctrlp.vim'

Bundle 'fatih/vim-go'
Bundle 'rust-lang/rust.vim'

Bundle 'prabirshrestha/async.vim'
Bundle 'prabirshrestha/vim-lsp'
Bundle 'mattn/vim-lsp-settings'
Bundle 'prabirshrestha/asyncomplete.vim'
Bundle 'prabirshrestha/asyncomplete-lsp.vim'


"Bundle 'vim-pandoc/vim-pandoc'
"Bundle 'vim-pandoc/vim-pandoc-syntax'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..


let g:vundle_default_git_proto = 'https'
