" make backspace more useful
set backspace=2
set backup       
set backupdir=~/.vim/backup
" read changed files automatically
set autoread
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set showcmd
set t_Co=256
" turn line numbers on
set number
set showmatch
" highlights the search results
set hlsearch
" incremental search
set incsearch
set virtualedit=onemore
" cursor can go one char beyond the last char
set smartcase
" turn autoindendation on
set autoindent
set pastetoggle=<F11>
set textwidth=78
set formatoptions=c,q,r,t
set ruler
" highlights the current mouse
set cursorline
set hidden
" hides the cursor while typing
set mousehide
" visual settings
set ttyfast
set shell=/usr/bin/zsh
set showmode
set wildmenu
set laststatus=2
set statusline=Editing:\ %F\ %m%r%h%w\ %={%{&ff}\|%{strlen(&fenc)?&fenc:'none'}\|%{strlen(&ft)?&ft:'fundamental'}}\ (%l/%L,%v)\ %P
set vb t_vb=
set foldmethod=syntax
set foldnestmax=1
set nofoldenable
call pathogen#infect()
filetype off
filetype plugin indent on
syntax on
set background=dark
colorscheme zenburn
function! NuTyToggle()
if(&number)
    set relativenumber
elseif (&relativenumber)
        set norelativenumber
    else 
        set number
    endif
endfunc
let mapleader=","
nnoremap j gj
nnoremap k gk
inoremap jj <Esc><cr>
nnoremap <silent><F12> :noh <cr>
nnoremap <silent><F2> :call NuTyToggle()<cr>
nnoremap <silent><F7> :NERDTreeToggle<cr>
nnoremap <silent><F8> :TlistToggle<cr>
nnoremap <silent><F9> :SyntasticToggleMode<cr>
nnoremap <silent><C-h>  :foldclose <cr>
noremap  <silent><C-Left>  :bprevious <cr>
noremap  <silent><C-Right> :bnext <cr>
nnoremap <silent><F6> :set foldenable! <cr>
