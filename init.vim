let g:python3_host_prog = '/usr/local/bin/python3'

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of thi repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'tpope/vim-commentary'
Plugin 'fatih/vim-go'
Plugin 'preservim/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'ycm-core/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this lines

set nocompatible              
set relativenumber
set number
filetype off                 
colorscheme dracula
syntax on

au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1

" highlight same words
let g:go_auto_sameids = 1

" integrate errors with airline
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'" Enable integration with airline.
let g:airline#extensions#ale#enabled = 1

let g:go_fmt_command = "goimports"    
let g:go_auto_type_info = 1          

map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map <C-n> :NERDTreeToggle<CR>
nmap ,n :NERDTreeFind<CR>

" esc in insert mode
inoremap kj <esc>
" esc in command mode
cnoremap kj <esc>
" esc in visual mode
vnoremap kj <esc>

" autocmd vimenter * NERDTree
let NERDTreeShowHidden=1

let g:airline#extensions#tabline#enabled = 1

set rtp+=/usr/local/opt/fzf
nmap ,s :FZF<CR>
