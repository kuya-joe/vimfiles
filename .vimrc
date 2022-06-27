let mapleader=','

set nocompatible
syntax on
filetype plugin indent on

set backspace=indent,eol,start
set background=dark
" colorscheme darcula
colorscheme gruvbox
" colorscheme default
set title
set showcmd
set cursorline
set lazyredraw
set wildmenu
set showmatch
set clipboard=unnamedplus
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set smarttab
set ruler
set backspace=indent,eol,start
set termguicolors
set encoding=UTF-8
set splitbelow
set splitright
set laststatus=2
hi Normal guibg=NONE ctermbg=NONE
set colorcolumn=80
set autoindent smartindent cindent
" -- BACKUPS --
" Disable backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile

" cursor shape
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" relative/absolute line number toggling
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

call plug#begin()
  Plug 'morhetz/gruvbox'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'preservim/nerdtree'
call plug#end()

" So ,ne - open leader, Ctrl-n - toggle
nmap <leader>ne :NERDTree<cr>
map <C-n> :NERDTreeToggle<CR>
packloadall

set nofoldenable
" just type jj and goes back to Normal mode
imap jj <Esc>


set showtabline=2
