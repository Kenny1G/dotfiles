"color scheme
colorscheme gruvbox
set background=dark

"allows rg to always detect root
if executable('rg') 
   let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

let g:netrw_browse_split = 2 "file tree open files with browse split 2
let g:netrw_banner = 0 "no help info at top of file tree
let g:netrw_winsize = 25 "file treee window size should be 25%

let g:ctrlp_use_caching = 0

nnoremap <leader>u :UndotreeToggle<CR>:UndotreeFocus<CR>
"opens small file tree to the left
nnoremap <leader>pv :NERDTreeFocus<Enter> 
"use rip greep
nnoremap <Leader>ps :Rg<Space>
"don't know
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv


"tmux navigation with Alt
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <Esc>h :TmuxNavigateLeft<cr>
nnoremap <silent> <Esc>j :TmuxNavigateDown<cr>
nnoremap <silent> <Esc>k :TmuxNavigateUp<cr>
nnoremap <silent> <Esc>l :TmuxNavigateRight<cr>
nnoremap <silent> <Esc>\ :TmuxNavigatePrevious<cr>

"vim fugitive make Gdiff vertical
set diffopt+=vertical

"linter settings
let g:syntastic_cpp_checkers = ['clang_tidy', 'cpplint']
let g:syntastic_c_checkers = ['clang_tidy', 'cpplint']
let g:syntastic_cpp_cpplint_exec = 'clang-tidy'
" The following two lines are optional. Configure it to your liking!
let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
let g:syntastic_c_clang_tidy_post_args = ""
let g:syntastic_clang_tidy_config_file = "compile_commands.json"


" c++ syntax highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
set statusline^=%{coc#status()}

