" SOME DEFAULTS
syntax enable
set tabstop=3 "3 chars long
set softtabstop=3 "3 spaces long
set shiftwidth=3 "arrows moves 3 spaces
set expandtab "use spaces not tabs
set smartindent "tries to indent for you
set number
set smartcase "case insensitive search until I put in a capital letter
set showcmd "show command in bottom bar
set cursorline  "highlight current line
filetype indent on "load filetype-specific indent files
set wildmenu "visual autocomplete for command menu
set lazyredraw "redraw only when we need to
set showmatch "highlight matching brackets
set incsearch "search as characters are entered
set hlsearch "highlight matches
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" highlight last inserted text
nnoremap gV `[v`]
" remap escape to jj
imap jj <Esc>
set nobackup "none of those swap files
set undodir=~/.vim/undodir "save backups to .vim/undodir
set undofile
set incsearch "while you search you get results
set colorcolumn=80 "show a line in column 80
set wrap
set cmdheight=2
set backspace=indent,eol,start  " more powerful backspacing

"PLUGINS
call plug#begin('~/.vim/plugged')
" Coconut oil
Plug 'morhetz/gruvbox'
" don't know yet
Plug 'jremmen/vim-ripgrep'
" git
Plug 'tpope/vim-fugitive'
" don't know yet
Plug 'vim-utils/vim-man'
" don't know yet
"Plug 'lyuts/vim-rtags'
" file search
Plug 'git@github.com:kien/ctrlp.vim.git'
" visual undo
Plug 'mbbill/undotree'
" auto complete
Plug 'neoclide/coc.nvim', {'branch':'release'}
" powerline for vim
Plug 'vim-airline/vim-airline'
" file explorer
Plug 'preservim/nerdtree'
" froggie
Plug 'christoomey/vim-tmux-navigator'
"Linting client
Plug 'vim-syntastic/syntastic'

call plug#end()
"PLUGINS END


"color scheme
colorscheme gruvbox
set background=dark

"allows rg to always detect root
if executable('rg') 
   let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "

let g:netrw_browse_split = 2 "file tree open files with browse split 2
let g:netrw_banner = 0 "no help info at top of file tree
let g:netrw_winsize = 25 "file treee window size should be 25%

let g:ctrlp_use_caching = 0

"move to right vim window
nnoremap <leader>h :wincmd h<CR> 
"move to bottom vim window
nnoremap <leader>j :wincmd j<CR>
"move to top vim window
nnoremap <leader>k :wincmd k<CR>
"move to left vim window
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
"opens small file tree to the left
nnoremap <leader>pv :NERDTreeFocus<Enter> 
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv


"Required COC function
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction


"fun! GoCoc()
"required COC function
 inoremap  <silent><expr> <TAB>
             \ pumvisible() ? "\<C-n>" :
             \ <SID>check_back_space() ? "\<TAB>" :
             \ coc#refresh()

 inoremap  <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
 inoremap  <silent><expr> <C-space> coc#refresh()

 " GoTo code navigation.
 nmap  <leader>gd <Plug>(coc-definition)
 nmap  <leader>gy <Plug>(coc-type-definition)
 nmap  <leader>gi <Plug>(coc-implementation)
 nmap  <leader>gr <Plug>(coc-references)
 nnoremap  <leader>cr :CocRestart
"endfun


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
let g:syntastic_cpp_checkers = ['cpplint']
let g:syntastic_c_checkers = ['cpplint']
let g:syntastic_cpp_cpplint_exec = 'cpplint'
" The following two lines are optional. Configure it to your liking!
let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0


" remove highlighting
noremap <silent> <leader>n :noh<cr> 

"terminal debug settings
let g:termdebug_wide=1 "split it vertically
packadd termdebug "load termdebug on startup
"mapping to load termdebug
noremap <silent> <leader>td :Termdebug<cr> 
" Add mappings for gdb commands
noremap <silent> <leader>ds :Step<cr>
noremap <silent> <leader>dn :Over<cr>
noremap <silent> <leader>db :Break<cr>
noremap <silent> <leader>df :Finish<cr>
noremap <silent> <leader>ds :Stop<cr>
noremap <silent> <leader>dr :Run<cr>
noremap <silent> <leader>dc :Continue<cr>

