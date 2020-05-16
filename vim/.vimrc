syntax enable

set tabstop=3
set softtabstop=3
set shiftwidth=3
set expandtab

set number

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
