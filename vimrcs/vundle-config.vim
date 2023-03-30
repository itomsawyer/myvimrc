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
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
"" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
"" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
"" git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'


"Bundle 'c.vim'
"Bundle 'mattn/emmet-vim'
Bundle 'scrooloose/nerdtree'
"Bundle 'vim-scripts/nginx.vim'
"Bundle 'vim-scripts/taglist.vim'
"Bundle 'altercation/vim-colors-solarized'
"Bundle 'mdempsky/gocode'
Bundle 'fatih/vim-go'
Bundle 'ervandew/supertab'
Bundle 'preservim/tagbar'
Bundle 'ctrlpvim/ctrlp.vim'

Bundle 'prabirshrestha/async.vim'
Bundle 'prabirshrestha/vim-lsp'
Bundle 'mattn/vim-lsp-settings'

Bundle 'prabirshrestha/asyncomplete.vim'
"Bundle 'prabirshrestha/asyncomplete-lsp.vim'
"Bundle 'Shougo/ddc.vim'
"Bundle 'shun/ddc-vim-lsp'

"Bundle 'https://gitee.com/Jimmy_Huang/EasyCompleteYou2'


"Bundle 'Shougo/echodoc.vim'

"Bundle 'dense-analysis/ale'

"Bundle 'derekwyatt/vim-scala'

"Bundle 'vim-pandoc/vim-pandoc'
"Bundle 'vim-pandoc/vim-pandoc-syntax'

Bundle 'rust-lang/rust.vim'
Bundle 'racer-rust/vim-racer'

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
