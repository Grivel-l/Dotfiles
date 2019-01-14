sy on
set nu
set cursorline					"Highlight current line"
set title

set autoindent
set smartindent
set expandtab
set shiftwidth=4
set softtabstop=4
autocmd FileType make setlocal noexpandtab
autocmd FileType make setlocal shiftwidth=8
autocmd FileType make setlocal softtabstop=8

set hlsearch
set smartcase					"No CamelCase search"
set incsearch					"Incremental search"

set background=dark
colorscheme hybrid

"Copy/Paste between vim instances"
nmap _Y :!echo "" > $HOME/.vi_tmp<CR><CR>:w! $HOME/.vi_tmp<CR>
vmap _Y :w! $HOME/.vi_tmp<CR>
nmap _P :r $HOME/.vi_tmp<CR>

"Plugins"
let g:ale_linters = {"javascript": ["eslint"]}
let g:ale_linters_explicit = 1
