" auto-install vimplug, if it is not already installed
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/vim/bundle')
Plug 'nathanaelkane/vim-indent-guides'
Plug 'luochen1990/rainbow'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
Plug 'Sirver/ultisnips' 
Plug 'honza/vim-snippets' 
Plug 'chriskempson/base16-vim' 
Plug 'lervag/vimtex' 
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
call plug#end()

"" plugin settings
" enable rainbow parantheses
let g:rainbow_active = 1
" enable the tab bar
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='base16_tomorrow'
" vim settings
set encoding=utf-8
set hidden
set incsearch
set ignorecase
set smartcase
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set noswapfile
set cursorline
set wildmenu
set showmatch
set autoindent
set pastetoggle=<F2>
" shortcuts and etc.
nnoremap j gj
nnoremap k gk
map <silent><F1> :set invrelativenumber<cr>
" set default tex to be latex
let g:tex_flavor="latex"
" ultisnips causes some problems with latex
"let g:tex_conceal = ""
let g:vimtex_view_method ="skim"
set conceallevel=2

if has("termguicolors")
    set termguicolors
endif

colorscheme base16-nord
"hi clear Conceal
set guifont=Inconsolata:h16

let g:deoplete#enable_at_startup = 1
let g:indent_guides_enable_on_vim_startup = 1
