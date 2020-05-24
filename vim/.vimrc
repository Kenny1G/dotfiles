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


"PLUGINS
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'ycm-core/YouCompleteMe'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'mbbill/undotree'
Plug 'neoclide/coc.nvim', {'branch':'release'}

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
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"fun! GoYCM()
"    nnoremap <buffer> <silent> <leader>gd :YcmCompleter GoTo<CR>
"    nnoremap <buffer> <silent> <leader>gr :YcmCompleter GoToReferences<CR>
"    nnoremap <buffer> <silent> <leader>rr :YcmCompleter RefactorRename<space>
"endfun

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


