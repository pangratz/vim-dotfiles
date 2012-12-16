" use pathogen for vim plugins
" use plugins in ~/.vim/bundle
call pathogen#infect()

" set ',' as leader
let mapleader = ","
" no compatibilty with legacy vim
set nocompatible
" disable arrow keys because they make 'O' unusably slow
set noesckeys
syntax enable
set encoding=utf-8
" display incomplete commands
set showcmd
" load file type plugins + indentation
filetype plugin indent on
" load new files per default (e.q when git-branch was switched)
set autoread

"""""""""""""
" solarized "
""""""""""""""
set background=dark
colorscheme solarized
" to toggle solarized background
call togglebg#map("<F2>")"


""""""""""""""
" Whitespace "
""""""""""""""
" a tab is two spaces
set tabstop=2 shiftwidth=2
" use spaces, not tabs
set expandtab
" wrap lines
set wrap
set textwidth=80
set formatoptions=qrn1
set colorcolumn=80
" show end of lines
set list
set listchars=eol:~
" show linenumbers
set number


"""""""""""""
" Searching "
"""""""""""""
" highlight matches
set hlsearch 
" to show matches while typing
set incsearch
" ignore case on search
set ignorecase
" unless they contain at least one capital letter
set smartcase 

"""""""""""""""""""""
" window navigation "
"""""""""""""""""""""
" ease up window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" nice moving inside of tex files
map j gj
map k gk
map [Up] gk
map [Down] gj

" Resize splits when the window is resized
au VimResized * exe "normal! \<c-w>="

" make it easy to resize windows
map + <C-W>+
map - <C-W>-
map ö <C-W><
map ä <C-W>>

""""""""
" misc "
""""""""
" save when focus is lost
au FocusLost * :wa

" dismiss highlighted search items on leader+space
nnoremap <leader><space> :noh<cr>

" no need for swapfiles¬
set noswapfile

" f12 to turn on/off highlighting of the current line
noremap <silent><f9> :set cursorline!<cr>

""""""""""""""""""""""""
" plugin customization "
""""""""""""""""""""""""
" graphical vim undo gundo
nnoremap <F4> :GundoToggle<CR>
" close Gundo on revert
let g:gundo_close_on_revert = 1

" NERDTree customization
map <leader><TAB> :<C-U>NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen = 1

" show YankRing history
nnoremap <silent> <F1> :YRShow<cr>
inoremap <silent> <F1> <ESC>:YRShow<cr>

" remap ctrlp to <leader>t
let g:ctrlp_map = '<leader>t'

" make ZoomWin work on <leader>0
map <leader>0 :ZoomWin<CR>
" ack on cmd+shift+f
map <leader>f :Ack<space>
" ignore tmp directory for ctrlp
set wildignore+=*/tmp/*

" some useful bindings for coffeescript code
" lint the current .coffee-file
map <leader>c :CoffeeLint \| cwindow<CR>

" watch compile the current .coffee-file
map <leader>w :CoffeeCompile watch vert<CR>

" align selected lines on '='
map <leader>9 :Tabularize/=<cr>
