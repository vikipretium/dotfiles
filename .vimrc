syntax on

set encoding=utf-8
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey


call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'mbbill/undotree'
Plug 'vim-utils/vim-man'
"Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'bling/vim-bufferline'
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'


call plug#end()

colorscheme gruvbox
set background=dark

let mapleader = " "
let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize =25

"remaps

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>s :source %<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

"YCM
nnoremap <silent> <leader>gd :YCMCompleter GoTo<CR>
nnoremap <silent> <leader>gf :YCMCompleter FixIt<CR>

"git

nmap <leader>gs :G<CR>
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>

"vimspector debugging

nnoremap <Leader>dd : call vimspector#Launch()<CR>
nnoremap <Leader>de : call vimspector#Reset()<CR>
nnoremap <Leader>dc : call vimspector#Continue()<CR>

nnoremap <Leader>dt : call vimspector#ToggleBreakpoint()<CR>
nnoremap <Leader>dT : call vimspector#ClearBreakpoint()<CR>

nmap <Leader>dk <Plug>VimspectorRestart
nmap <Leader>dh <Plug>VimspectorStepOut
nmap <Leader>dl <Plug>VimspectorStepInto
nmap <Leader>dj <Plug>VimspectorStepOver

"maximize

nnoremap <Leader>m :MaximizerToggle<CR>
