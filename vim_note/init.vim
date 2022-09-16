set backupdir=./.backup,.,/tmp
set directory=.,./.backup,/tmp
"set runtimepath+=~/.vim,~/.vim/after
"set packpath+=~/.vim
"source ~/.vimrc
"
"
call plug#begin('~/.config/nvim/bundle')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
" ysiw'
" ds'

Plug 'scrooloose/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'zchee/deoplete-jedi'
Plug 'trevordmiller/nova-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'
Plug 'vimlab/split-term.vim'
Plug 'cocopon/iceberg.vim'
" call PlugInstall to install new plugins
"
"
Plug 'Chiel92/vim-autoformat'
Plug 'numirias/semshi'
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'https://github.com/tom-doerr/vim_codex.git'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'

" tags
Plug 'ludovicchabant/vim-gutentags'
Plug 'gcmt/taboo.vim'

" syntax check
Plug 'w0rp/ale'
Plug 'easymotion/vim-easymotion'

" fold
Plug 'Konfekt/FastFold'

call plug#end()

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

set wildmenu

"" turn hybrid line numbers on
set number relativenumber
"set nu rnu

"" turn hybrid line numbers off
"set nonumber norelativenumber
"set nonu nornu

" toggle hybrid line numbers
"set number! relativenumber!
"set nu! rnu!

" basics
filetype plugin indent on
syntax on set number
set incsearch
set ignorecase
set smartcase
set hlsearch
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set nobackup
set noswapfile
set nowrap
set colorcolumn=79

" codex
nnoremap  <C-x> :CreateCompletion<CR>
inoremap  <C-x> <Esc>li<C-g>u<Esc>l:CreateCompletion<CR>

" preferences
inoremap jj <ESC>
let mapleader = ","
" Lets you save after you open a file that needs sudo
cmap !! w !sudo tee % >/dev/null


let g:python3_host_prog = '/Users/kc244/opt/anaconda3/bin/python'

nmap <silent> ,/ :nohlsearch<CR>
let mapleader = ","
let g:mapleader = ","
nnoremap <space> 10jzz
nnoremap <backspace> 10kzz
nmap <leader>s :w!<cr>
nmap <leader>r :vsplit term://cd /data/pnl/kcho/PNLBWH/devel/fsl_randomise/test_tbss/stats;randomise_summary.py -ss
nmap <leader>w <c-w>
nmap <leader>q :q<cr>
nmap <leader>1 :w !pbcopy<cr>
nmap <leader>2 :!pbpaste<cr>
nmap <leader><leader>q :q!<cr>
nmap <leader>x :close<cr>
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
set pastetoggle=<F2>
" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
" Stay in visual mode when indenting. You will never have to run gv after
" performing an indentation.
vnoremap < <gv
vnoremap > >gv
" Make Y yank everything from the cursor to the end of the line. This makes Y
" act more like C or D because by default, Y yanks the current line (i.e. the
" same as yy).
"noremap Y y$
" navigate split screens easily
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
" change spacing for language specific
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2


" terminal settings
set splitright
nnoremap <leader>tt :TTerm<cr>
nnoremap <leader>vt :VTerm<cr>


tnoremap jj <C-\><C-n>
tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'

tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Fugitive  ********************************************************************
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set previewheight=20

nnoremap <Leader>ga :Git add %:p<CR><CR>
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gc :Gcommit -v -q<CR>
nnoremap <Leader>gt :Gcommit -v -q %:p<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gg :Gcommit -a -m '
nnoremap <Leader>ge :Gedit<CR>
nnoremap <Leader>gr :Gread<CR>
nnoremap <Leader>gw :Gwrite<CR><CR>
nnoremap <Leader>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <Leader>gp :Gpush<Space>
nnoremap <Leader>gm :Gmove<Space>
nnoremap <Leader>gb :Git branch<Space>
nnoremap <Leader>go :Git checkout<Space>
nnoremap <Leader>gps :Dispatch! git push<CR>
nnoremap <Leader>gpl :Dispatch! git pull<CR>


" settings

" Default pythons

" Shortcuts
nnoremap <leader>ev :tabnew ~/.config/nvim/init.vim<cr>
nnoremap <leader>ee :tabnew ~/.bashrc<cr>
nnoremap <leader>eb :tabnew /data/pnl/soft/pnlpip3/bashrc<cr>

" plugin settings

" deoplete
let g:deoplete#enable_at_startup = 1
" use tab to forward cycle
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" use tab to backward cycle
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
" Close the documentation window when completion is done
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Theme
syntax enable
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"set termguicolors
set background=dark
"colorscheme nova
colorscheme iceberg

"NERDTree
" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" toggle NERDTree
map <leader>n :NERDTreeToggle<CR>
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', 'node_modules']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite

" jsx
let g:jsx_ext_required = 0

" ale prettier-eslint
"let g:ale_fixers = {
"\   'javascript': ['prettier_eslint'],
"\}
"let g:ale_fix_on_save = 1
"let g:ale_javascript_prettier_eslint_executable = 'prettier-eslint'
"let g:ale_javascript_prettier_eslint_use_global = 1
"
"

" working directory setting
set autochdir


" Wayland clipboard provider that strips carriage returns (GTK3 issue).
" This is needed because currently there's an issue where GTK3 applications on
" Wayland contain carriage returns at the end of the lines (this is a root
" issue that needs to be fixed).
let g:clipboard = {
      \   'name': 'wayland-strip-carriage',
      \   'copy': {
      \      '+': 'wl-copy --foreground --type text/plain',
      \      '*': 'wl-copy --foreground --type text/plain --primary',
      \    },
      \   'paste': {
      \      '+': {-> systemlist('wl-paste --no-newline | tr -d "\r"')},
      \      '*': {-> systemlist('wl-paste --no-newline --primary | tr -d "\r"')},
      \   },
      \   'cache_enabled': 1,
      \ }


" FastFold
nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']

set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2


" print
nmap <leader>h ^iprint(<ESC>A)<ESC>^
nmap <leader><leader>h ^6x$x





"
"
" command
noremap Q !!sh<CR>
