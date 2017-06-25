
call plug#begin('~/.vim/plugged')
" My Bundles here:
"
" original repos on github
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-obsession'
Plug 'tmhedberg/matchit'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'morhetz/gruvbox'
Plug 'othree/xml.vim'
Plug 'Shougo/unite.vim'
"Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'junegunn/seoul256.vim'
Plug 'vim-scripts/xoria256.vim'
Plug 'mileszs/ack.vim'
Plug 'vim-syntastic/syntastic'
Plug 'pangloss/vim-javascript'
Plug 'ervandew/supertab'


call plug#end()



set path+=**


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files and backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile


"Hide the -- Insert -- at the botton as it's in airline
:set noshowmode

set hid "Change buffer - without saving






" vim options
filetype plugin indent on
syntax on
cabbr te tabedit
" colorscheme xoria256
" colorscheme solarized
set background=dark
"let g:seoul256_background = 233
"let g:seoul256_light_background = 256
"colo seoul256
colorscheme gruvbox
set termguicolors

"set expandtab
set nocompatible
set laststatus=2
set tabstop=2
set shiftwidth=2
set showtabline=2
set number
set wrap
set backspace=0
set t_Co=256
"set colorcolumn=80 " red line and over is error
set textwidth=0
set hlsearch

" turn off vim-markdown folding
let g:vim_markdown_folding_disabled=1



" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","


""""""""""""""""""""""""""""""""""""""
" => Fast opening of files
""""""""""""""""""""""""""""""""""""""
"Open the .vimrc
map <leader>e :e! ~/.vimrc<cr>

			"Open hosts file"
map <leader>h :e! /etc/hosts<cr>

"Open zshrc"
map <leader>z :e! ~/.zshrc<cr>

"Open local zshrc"
map <leader>zv :e! ~/.oh-my-zsh/custom/variables.zsh<cr>

"Open env zsh
map <leader>za :e! ~/.oh-my-zsh/custom/alias.zsh<cr>
map <leader>zf :e! ~/.oh-my-zsh/custom/functions.zsh<cr>


"Open bashrc"
"map <leader>b :e! ~/.bashrc<cr>

"Open local bashrc"
"map <leader>bl :e! ~/.bashrc.local<cr>

"Open env bashrc
"map <leader>be :e! ~/.bashrc.env<cr>

"Open env bashrc
"map <leader>ba :e! ~/.bashrc.aliases<cr>

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Shortcut to rapidly toggle `set number`
nmap <leader>n :set number!<CR>



" When vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc


" enforce purity
noremap  <Up> <Nop>
noremap  <Down> <Nop>
noremap  <Left> <Nop>
noremap  <Right> <Nop>

" ag-vim shortcut
map <Leader>f gagiw

" set nonumber
highlight Normal ctermbg=None


" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

"Ack config
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>


"Airline config
let g:airline_powerline_fonts = 1

set ffs=unix,dos,mac "Default file types

if has("gui_running")
  set guifont=Roboto\ Mono\ for\ Powerline:h12
  "set guifont=Source\ Code\ Pro\ for\ Powerline:h16
endif

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
hi NonText ctermfg=7 guifg=gray

set encoding=utf8


let g:ctrlp_working_path_mode=0

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


"let g:syntastic_javascript_checkers = ['jshint', 'jscs']
let g:syntastic_html_tidy_ignore_errors = ['unescaped &', 'lacks "action']
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0


set shortmess+=I
