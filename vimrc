"Global"
set nu
set cursorline					"Highlight current line"
set directory=$HOME/.vim/backups
set ttimeoutlen=0

"Indentation"
set autoindent
set smartindent
set expandtab
set shiftwidth=4
set softtabstop=4
autocmd FileType make setlocal noexpandtab
autocmd FileType make setlocal shiftwidth=8
autocmd FileType make setlocal softtabstop=8

"Search"
set hlsearch
set ignorecase
set smartcase
set incsearch					"Incremental search"

"Files search"
set path +=./**
set wildmenu	"Display matching files when completing"

"Colors"
syntax on
set background=dark
colorscheme hybrid

"Status line"
set laststatus=2
set statusline=%t
hi StatusLine ctermbg=NONE ctermfg=NONE cterm=NONE

"Alias"
command MakeTags !ctags -R .

"Plugins"

"Linters"
let g:ale_linters = {"javascript": ["eslint"]}
let g:ale_linters_explicit = 1

"Copy/Paste between vim instances"
nmap _Y :!echo "" > /tmp/.vim_tmp<CR><CR>:w! /tmp/.vim_tmp<CR>
vmap _Y :w! /tmp/.vim_tmp<CR>
nmap _P :r /tmp/.vim_tmp<CR>

