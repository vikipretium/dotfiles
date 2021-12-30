syntax on
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set exrc
set guicursor=
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set nu
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
set colorcolumn=80
set signcolumn=yes

set cmdheight:1

set updatetime=50

set shortmess+=c
set colorcolumn=80

"Plugins

call plug#begin('~/.vim/plugged')
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'neovim/nvim-lspconfig'
Plug 'szw/vim-maximizer'
"Plug 'puremourning/vimspector'

call plug#end()

"Color Scheme:

colorscheme gruvbox
highlight Normal guibg=none
set background=dark


" Keymaps
let mapleader = " "
let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25

nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

nmap <leader>gs :G<CR>
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>


"fun! TrimWhitespace()
"    let l:save = winsaveview()
"    keeppatterns %s/\s+$//e
"    call winrestview(l:save)
"endfun

"augroup VP
"    autocmd!
"    autocmd BufWritePre * :call TrimWhitespace()
"augroup END     


