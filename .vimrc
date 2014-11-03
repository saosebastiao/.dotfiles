call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
colorscheme darkblue
set expandtab " convert tabs to spaces
au BufNewFile * start
au BufNewFile,BufRead *.jsx set filetype=javascript
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType bash setlocal shiftwidth=2 tabstop=2
autocmd FileType xml setlocal shiftwidth=2 tabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType scala setlocal shiftwidth=2 tabstop=2
autocmd FileType r setlocal shiftwidth=2 tabstop=2
autocmd FileType make setlocal noexpandtab
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
set autoread
set tabstop=4 " show tabs as 4 spaces 
set nomousehide " don't hide the mouse in GVim
set autoindent "autoindent to previous position
set shiftwidth=4 "autoindenting to 4 spaces
set backspace=indent,eol,start "allow backspacing over everything in insert mode
set showmatch "show matching parens
set ignorecase "ignore case for search
set smartcase "ignore case if search pattern is all lowercase
set incsearch "show search matches as you type
set history=1000 " large history
set undolevels=1000 "large undo
set nobackup "no backup files
set noswapfile "does not create a swap file during editing
set pastetoggle=<F2> "disables autoindent for pasting 
set autochdir
" quick clear of highlights in search
nmap <silent> ,/ :nohlsearch<CR>
nmap <C-n> :NERDTreeToggle<CR>
let g:slime_target = "tmux"
let g:slime_past_file = "$HOME/.slime_paste"
let g:LatexBox_latexmk_options = "-pvc -pdfps"

