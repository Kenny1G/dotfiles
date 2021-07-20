"Vanilla vim rebinds

" SOME DEFAULTS
syntax enable

"Tabs vs Spaces
set tabstop=4 "show existing tab with 4 spaces
" set softtabstop=4 "4 spaces long
set shiftwidth=0 "arrows moves 'tabstop' spaces
set noexpandtab "use tabs
set smartindent "tries to indent for you

"show tabs
set list
set listchars=tab:>.

set number
set ignorecase "required for below
set smartcase "case insensitive search until I put in a capital letter
set showcmd "show command in bottom bar
set cursorline  "highlight current line
filetype indent on "load filetype-specific indent files
set wildmenu "visual autocomplete for command menu
" set lazyredraw "redraw only when we need to
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
"set clipboard=exclude:.*  "don't try x11 clipboard shenanigans
set hidden "allow changing buffers without saving
"set mouse=a "use mouse

" remove highlighting
noremap <silent> <leader>n :noh<cr> 

let mapleader = " "
"split panes like your sane
set splitbelow
set splitright

" Show commit author
map <silent><Leader>g :call setbufvar(winbufnr(popup_atcursor(systemlist("cd " . shellescape(fnamemodify(resolve(expand('%:p')), ":h")) . " && git log --no-merges -n 1 -L " . shellescape(line("v") . "," . line(".") . ":" . resolve(expand("%:p")))), { "padding": [1,1,1,1], "pos": "botleft", "wrap": 0 })), "&filetype", "git")<CR>

"May the buff be with you
" previous buffer
nnoremap gp :bp<CR>
" next buffer
nnoremap gn :bn<CR>
" List all possible buffers with "gl"
nnoremap gl :ls<CR>
" List all possible buffers with "gb" and accept a new buffer argument
nnoremap gu :ls<CR>:b 
" opens a new buffer with the current buffer's path
map <leader>e :edit <c-r>=expand("%:p:h")<cr>/
" Close the current buffer
map <leader>d :bd<cr>  
" Close all the buffers
map gw :%bd\|e#\|bd#<cr> 
" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" CTRL 6 no work with coc
map <leader>6 :e # <CR>

" get rid of windows line endings
nnoremap <silent><leader>gk :%s/\r//g<CR>

"move to right vim window
nnoremap <leader>h :wincmd h<CR> 
"move to bottom vim window
nnoremap <leader>j :wincmd j<CR>
"move to top vim window
nnoremap <leader>k :wincmd k<CR>
"move to left vim window
nnoremap <leader>l :wincmd l<CR>

"quicker resize
nnoremap <silent> <Leader>+ :resize +5<CR>
nnoremap <silent> <Leader>- :resize -5<CR>
