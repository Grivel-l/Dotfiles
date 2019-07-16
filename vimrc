"Global"
set nu
set cursorline					"Highlight current line"
set directory=$HOME/.vim/backups
set ttimeoutlen=0
set undofile
set undodir=$HOME/.vim/undo

"Indentation"
set autoindent
set smartindent
set expandtab
set shiftwidth=2
set softtabstop=2
autocmd FileType make setlocal noexpandtab
autocmd FileType make setlocal shiftwidth=8
autocmd FileType make setlocal softtabstop=8

"Search"
set hlsearch
set ignorecase
set smartcase
set incsearch					"Incremental search"
set grepprg=grep\ -n\ $*\ -R\ .\ --exclude-dir=node_modules\ --exclude=tags

"Files search"
set path+=**
set wildmenu
set wildignorecase
set wildmode=longest,list,full

"Colors"
syntax on
set background=dark
colorscheme hybrid

"Status line"
set laststatus=2
set statusline=%t
hi StatusLine ctermbg=NONE ctermfg=NONE cterm=NONE

"Alias"
command MakeTags !ctags --exclude="*node_modules*" -R .

"Key mapping"
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

"Plugins"

"Linters"
let g:ale_linters = {"javascript": ["eslint"]}
let g:ale_linters_explicit = 1
let g:ale_fixers = {"javascript": ["prettier"]}
let g:ale_fix_on_save = 1

