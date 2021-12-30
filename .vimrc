
set encoding=utf-8
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set relativenumber 
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch


call plug#begin('~/.vim/plugged')

Plug 'chun-yang/auto-pairs'
Plug 'ap/vim-css-color'
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'morhetz/gruvbox'
Plug 'mbbill/undotree'
Plug 'vim-utils/vim-man'
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'bling/vim-bufferline'
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'
Plug 'mattn/emmet-vim'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'prettier/vim-prettier', {
      \ 'do': 'yarn install --frozen-lockfile --production',
      \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
Plug 'turbio/bracey.vim'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-commentary'

call plug#end()

"color scheme
colorscheme gruvbox
set background=dark

"Vim hexokinase
let g:Hexokinase_highlighters = [ 'sign_column' ]
let g:Hexokinase_highlighters = [
            \   'virtual',
            \   'sign_column',
            \   'background',
            \   'backgroundfull',
            \   'foreground',
            \   'foregroundfull'
            \ ]
let g:Hexokinase_refreshEvents = ['TextChanged','InsertLeave']

let g:Hexokinase_optInPatterns = [
            \ 'full_hex',
            \ 'triple_hex',
            \ 'rgb',
            \ 'rgba',
            \ 'hsl',
            \ 'hsla',
            \ 'colour_names'
            \]
let g:Hexokinase_highlighters = ['backgroundfull']
let g:Hexokinase_ftEnabled = ['css', 'html' , 'javascript']


let mapleader = " "
let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize =25

let g:user_emmet_leader_key=','

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


"--AUTOCOMPELETION--
filetype plugin on
set omnifunc=syntaxcomplete#Complete
