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
"""""""""""""""""""""""""""""""
"" => CTRL-P
"""""""""""""""""""""""""""""""
"let g:ctrlp_working_path_mode = 0
"
"let g:ctrlp_map = '<c-f>'
"map <c-b> :CtrlPBuffer<cr>
"
"let g:ctrlp_max_height = 20
"let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'
"
"
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
" => tagslist 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"map <leader>tt :TlistToggle<cr>

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
let g:go_def_mode = 'gopls'
let g:go_def_mapping_enabled = 1
let g:go_gopls_complete_unimported = 1
let g:go_info_mode = 'gopls'
let g:go_def_mode = 'gopls'
let g:go_referrers_mode = 'gopls'
let g:go_gopls_deep_completion = 1

au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

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

" Error and warning signs.
"let g:ale_sign_error = '⤫'
"let g:ale_sign_warning = '⚠'
" Enable integration with airline.
" let g:airline#extensions#ale#enabled = 1

"au Filetype go nmap <leader>ga <Plug>(go-alternate-edit)
"au Filetype go nmap <leader>gah <Plug>(go-alternate-split)
"au Filetype go nmap <leader>gav <Plug>(go-alternate-vertical)
au FileType go nmap <Leader>gi :GoImplements <cr>
au FileType go nmap <Leader>i :GoImports <cr>
au FileType go nmap <Leader>] :GoReferrers <cr>
"au FileType go nmap <F10> :GoTest -short<cr>
"au FileType go nmap <F9> :GoCoverageToggle -short<cr>


" Go related mappings
"au FileType go nmap <Leader>i <Plug>(go-info)
"au FileType go nmap <Leader>gd <Plug>(go-doc)
"au FileType go nmap <Leader>r <Plug>(go-run)
"au FileType go nmap <Leader>b <Plug>(go-build)
"au FileType go nmap <Leader>t <Plug>(go-test)
"au FileType go nmap gd <Plug>(go-def-tab)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => deoplete.nvim config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"let g:deoplete#enable_at_startup = 1
"set completeopt-=preview
"
"" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => neocomplete  config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set completeopt+=menuone
"set completeopt-=preview
"set cmdheight=2

" Enable heavy omni completion.
"if !exists('g:neocomplete#sources#omni#input_patterns')
"    let g:neocomplete#sources#omni#input_patterns = {}
"endif

" golang fix
" let g:neocomplete#sources#omni#input_patterns.go = '[^.[:digit:] *\t]\.\w*'


" " Disable AutoComplPop.
" let g:acp_enableAtStartup = 0
" " Use neocomplete.
" let g:neocomplete#enable_at_startup = 1
" " Use smartcase.
" let g:neocomplete#enable_smart_case = 1
" " Set minimum syntax keyword length.
" let g:neocomplete#sources#syntax#min_keyword_length = 3
"
" " Plugin key-mappings.
" inoremap <expr><C-g>     neocomplete#undo_completion()
" inoremap <expr><C-l>     neocomplete#complete_common_string()
"
" " Recommended key-mappings.
" " <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function()
"     return neocomplete#close_popup() . "\<CR>"
" endfunction
" " <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" " <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><C-y>  neocomplete#close_popup()
" inoremap <expr><C-e>  neocomplete#cancel_popup()
"
" " Go related mappings
" au FileType go nmap <Leader>i <Plug>(go-info)
" au FileType go nmap <Leader>gd <Plug>(go-doc)
" au FileType go nmap <Leader>r <Plug>(go-run)
" au FileType go nmap <Leader>b <Plug>(go-build)
" au FileType go nmap <Leader>t <Plug>(go-test)
" au FileType go nmap gd <Plug>(go-def-tab)

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


