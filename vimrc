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

set formatoptions+=r			"Autocomment if previous line is a comment"

"Plugins"
let g:ale_linters = {"javascript": ["eslint"]}
let g:ale_linters_explicit = 1
