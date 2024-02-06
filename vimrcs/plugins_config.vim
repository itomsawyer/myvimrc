"
"""""""""""""""""""""""""""""""
"" => Load pathogen paths
"""""""""""""""""""""""""""""""
"call pathogen#infect('~/.vim_runtime/sources_forked')
"call pathogen#infect('~/.vim_runtime/sources_non_forked')
"call pathogen#helptags()
"
"""""""""""""""""""""""""""""""
"" => bufExplorer plugin
"""""""""""""""""""""""""""""""
"let g:bufExplorerDefaultHelp=0
"let g:bufExplorerShowRelativePath=1
"let g:bufExplorerFindActive=1
"let g:bufExplorerSortBy='name'
"map <leader>o :BufExplorer<cr>
"
"
"""""""""""""""""""""""""""""""
"" => MRU plugin
"""""""""""""""""""""""""""""""
"let MRU_Max_Entries = 400
"map <leader>f :MRU<CR>
"
"
"""""""""""""""""""""""""""""""
"" => YankRing
"""""""""""""""""""""""""""""""
"if has("win16") || has("win32")
"    " Don't do anything
"else
"    let g:yankring_history_dir = '~/.vim_runtime/temp_dirs/'
"endif
"
"
""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0

"let g:ctrlp_map = '<c-f>'
"map <c-b> :CtrlPBuffer<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'


"""""""""""""""""""""""""""""""
"" => Peepopen
"""""""""""""""""""""""""""""""
"map <leader>j :PeepOpen<cr>

""""""""""""""""""""""""""""""
" => ZenCoding
""""""""""""""""""""""""""""""
" Enable all functions in all modes
"let g:user_zen_mode='a'

"""""""""""""""""""""""""""""""
"" => snipMate (beside <TAB> support <CTRL-j>)
"""""""""""""""""""""""""""""""
"ino <c-j> <c-r>=snipMate#TriggerSnippet()<cr>
"snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>
"
"
"""""""""""""""""""""""""""""""
"" => Vim grep
"""""""""""""""""""""""""""""""
"let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
"set grepprg=/bin/grep\ -nH
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tagbar
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>tt : TagbarToggle<cr>

let g:rust_use_custom_ctags_defs = 1  " if using rust.vim
 " \ 'ctagsbin' : '/root/.uctags/bin/ctags',
let g:tagbar_type_rust = {
  \ 'ctagstype' : 'rust',
  \ 'kinds' : [
      \ 'n:modules',
      \ 's:structures:1',
      \ 'i:interfaces',
      \ 'c:implementations',
      \ 'f:functions:1',
      \ 'g:enumerations:1',
      \ 't:type aliases:1:0',
      \ 'C:constants:1:0',
      \ 'M:macros:1',
      \ 'm:fields:1:0',
      \ 'e:enum variants:1:0',
      \ 'P:methods:1',
  \ ],
  \ 'sro': '::',
  \ 'kind2scope' : {
      \ 'n': 'module',
      \ 's': 'struct',
      \ 'i': 'interface',
      \ 'c': 'implementation',
      \ 'f': 'function',
      \ 'g': 'enum',
      \ 't': 'typedef',
      \ 'v': 'variable',
      \ 'M': 'macro',
      \ 'm': 'field',
      \ 'e': 'enumerator',
      \ 'P': 'method',
  \ },
\ }


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => vim-multiple-cursors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:multi_cursor_next_key="\<C-s>"
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => surround.vim config
"" Annotate strings with gettext http://amix.dk/blog/post/19678
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vmap Si S(i_<esc>f)
"au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>
"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => vim-go config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set completeopt=menuone
let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "gopls"
let g:go_gopls_complete_unimported = 1
let g:go_info_mode = 'gopls'
let g:go_def_mode = 'gopls'
let g:go_def_mapping_enabled = 1
let g:go_referrers_mode = 'gopls'
let g:go_gopls_deep_completion = 1

au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

" " Go related mappings
"au Filetype go nmap <leader>ga <Plug>(go-alternate-edit)
"au Filetype go nmap <leader>gah <Plug>(go-alternate-split)
"au Filetype go nmap <leader>gav <Plug>(go-alternate-vertical)
au FileType go nmap <Leader>gi :GoImplements <cr>
au FileType go nmap <Leader>i :GoImports <cr>
au FileType go nmap <Leader><c-]> :GoReferrers <cr>
au FileType go nmap <Leader>] :GoCallers <cr>
"au FileType go nmap <F10> :GoTest -short<cr>
"au FileType go nmap <F9> :GoCoverageToggle -short<cr>
"au FileType go nmap <Leader>i :GoInfo <cr>
"au FileType go nmap <Leader>gd :GoDoc <cr>
"au FileType go nmap <Leader>r <Plug>(go-run)
"au FileType go nmap <Leader>b <Plug>(go-build)
"au FileType go nmap <Leader>t <Plug>(go-test)
"au FileType go nmap gd <Plug>(go-def-tab)



let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_auto_sameids = 1
let g:go_auto_type_info = 1
let g:go_updatetime = 500

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ale config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:ale_linters = {
"    \ 'python': ['pylint'],
"    \ 'vim': ['vint'],
"    \ 'cpp': ['clang'],
"    \ 'c': ['clang']
"\}

" Error and warning signs.
"let g:ale_sign_error = '⤫'
"let g:ale_sign_warning = '⚠'
" Enable integration with airline.
" let g:airline#extensions#ale#enabled = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => neovim code format
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neoformat_cpp_clangformat = {
    \ 'exe': 'clang-format',
    \ 'args': ['--style="{IndentWidth: 4}"']
\}
let g:neoformat_enabled_cpp = ['clangformat']
let g:neoformat_enabled_c = ['clangformat']


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => ctags config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set tags+=~/.vim_runtime/tags/libc6.tags

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => pandoc conig
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"command! -nargs=* RunSilent
"      \ | execute ':silent !'.'<args>'
"      \ | execute ':redraw!'
"nmap <Leader>pc :RunSilent pandoc -o /tmp/vim-pandoc-out.pdf %<CR>
"nmap <Leader>pp :RunSilent open /tmp/vim-pandoc-out.pdf<CR>
"


""""""""""""'
" => supertab"
"""""""""""""
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"




""""""""""""'
" => rust-lang"
"""""""""""""
let g:rustfmt_autosave = 1

"""""""""""""'
"" => rust-racer"
""""""""""""""
"set hidden
"
"let g:racer_experimental_completer = 1
"
"augroup Racer
"    autocmd!
"    autocmd FileType rust nmap <buffer> <c-]>      <Plug>(rust-def)
"    autocmd FileType rust nmap <buffer> gd         <Plug>(rust-def)
"    autocmd FileType rust nmap <buffer> gs         <Plug>(rust-def-split)
"    autocmd FileType rust nmap <buffer> gx         <Plug>(rust-def-vertical)
"    "autocmd FileType rust nmap <buffer> <leader>gt <Plug>(rust-def-tab)
"    autocmd FileType rust nmap <buffer> <leader>gd <Plug>(rust-doc)
"    autocmd FileType rust nmap <buffer> <leader>gD <Plug>(rust-doc-tab)
"augroup END

""""""""'
" => vim-lsp
"""""""""""""

let g:lsp_diagnostics_enabled = 0
let g:lsp_diagnostics_virtual_text_enabled = 0
let g:lsp_diagnostics_signs_enabled = 0

"if executable('clangd')
"    augroup lsp_clangd
"        autocmd!
"        autocmd User lsp_setup call lsp#register_server({
"                    \ 'name': 'clangd',
"                    \ 'cmd': {server_info->['clangd']},
"                    \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
"                    \ })
"        autocmd FileType c setlocal omnifunc=lsp#complete
"        autocmd FileType cpp setlocal omnifunc=lsp#complete
"        autocmd FileType objc setlocal omnifunc=lsp#complete
"        autocmd FileType objcpp setlocal omnifunc=lsp#complete
"    augroup end
"endif
"
"if executable('rust-analyzer')
"  au User lsp_setup call lsp#register_server({
"        \   'name': 'Rust Language Server',
"        \   'cmd': {server_info->['rust-analyzer']},
"        \   'whitelist': ['rust'],
"        \   'initialization_options': {
"        \     'cargo': {
"        \       'buildScripts': {
"        \         'enable': v:true,
"        \       },
"        \     },
"        \     'procMacro': {
"        \       'enable': v:true,
"        \     },
"        \   },
"        \ })
"endif

function! s:on_lsp_buffer_enabled() abort

    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gl <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    "nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
    "nnoremap <buffer> <expr><c-d> lsp#scroll(-4)


    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')

    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END


