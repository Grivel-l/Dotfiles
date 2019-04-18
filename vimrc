sy on
set nu
set cursorline					"Highlight current line"
set directory=$HOME/.vim/backups
set ttimeoutlen=0

set autoindent
set smartindent
set expandtab
set shiftwidth=4
set softtabstop=4
autocmd FileType make setlocal noexpandtab
autocmd FileType make setlocal shiftwidth=8
autocmd FileType make setlocal softtabstop=8

set hlsearch
set ignorecase
set smartcase
set incsearch					"Incremental search"

set background=dark
colorscheme hybrid

set laststatus=2
set statusline=%t
hi StatusLine ctermbg=NONE ctermfg=NONE cterm=NONE

"Copy/Paste between vim instances"
nmap _Y :!echo "" > /tmp/.vim_tmp<CR><CR>:w! /tmp/.vim_tmp<CR>
vmap _Y :w! /tmp/.vim_tmp<CR>
nmap _P :r /tmp/.vim_tmp<CR>

"Plugins"
let g:ale_linters = {"javascript": ["eslint"]}
let g:ale_linters_explicit = 1

