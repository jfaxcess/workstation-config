
set ruler
set number
set relativenumber
set ignorecase
set smartcase
set history=500
set backspace=eol,start,indent
set showcmd
set incsearch
set hlsearch
nohl
set shiftwidth=2
set tabstop=2
"set softtabstop=4
set expandtab
"set smarttab
set cursorline

set linebreak
set display+=lastline

set nowrapscan

set showmatch
set matchtime=5
set laststatus=2

nmap <silent> <C-n> :silent :nohl<CR>

let mapleader=","
noremap \ ,

set hidden
set wildmenu
set wildmode=list:longest
set modeline

set title
set scrolloff=4
set novisualbell
set noerrorbells
set mousehide
set mouse=nv

"set wrapscan

set switchbuf=useopen
set nobackup
set noswapfile

set pastetoggle=<F2>

" Map nonprintable characters and toggle visibility
" using ,c
set listchars=tab:>-,trail:·,eol:¶
nmap <silent> <leader>c :set nolist!<CR>

set background=dark

if has("gui_running")
    set guioptions-=T
    set guioptions-=m
    set guioptions+=c
    " change the font.
    "set gfn=Luxi\ Mono\ 10
    "set gfn=Anonymous\ Pro\ 14
    "set gfn=Inconsolata\ for\ Powerline\ Medium\ 12
    "set gfn=Inconsolata\ for\ Powerline:h18
endif

set encoding=utf-8

if &diff
    syntax off
endif

if has('termguicolors')
  set termguicolors
endif

" Map F6 to turn spellcheck on and off
map <F6> <Esc>:setlocal nospell! spelllang=en_us<CR>

map <C-h> :bp<CR>
map <C-l> :bn<CR>
map <C-j> gj
map <C-k> gk

map <leader>tn :tabnew<CR>
map <leader>tc :tabclose<CR>
map <leader>tl :tabnext<CR>
map <leader>th :tabprevious<CR>

nnoremap n nzz
nnoremap N Nzz
"nnoremap } }zz

nnoremap Q <nop>

if !has("nvim")
  set cm=blowfish2

  let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
  let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"
endif

filetype off

call plug#begin('~/.vim/bundle')
" Plugins:
Plug 'ciaranm/securemodelines'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/matchit.zip'
Plug 'vim-scripts/ZoomWin'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vimoutliner/vimoutliner'
Plug 'othree/javascript-libraries-syntax.vim'
"Plug 'othree/html5.vim'
"Plug 'HerringtonDarkholme/yats.vim'
"Plug 'othree/yajs.vim'
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'Quramy/tsuquyomi'
Plug 'pangloss/vim-javascript'
"Plug 'maxmellon/vim-jsx-pretty'
Plug 'mxw/vim-jsx'
"Plug 'sheerun/vim-polyglot'
Plug 'bling/vim-airline'
"Plug 'scrooloose/syntastic'
Plug 'w0rp/ale'
Plug 'kien/ctrlp.vim'
Plug 'benmills/vimux'
Plug 'leshill/vim-json'
" Plug 'Valloric/YouCompleteMe'
Plug 'flazz/vim-colorschemes'
Plug 'honza/vim-snippets'
"Plug 'ervandew/supertab'
Plug 'romainl/apprentice'
Plug 'morhetz/gruvbox'
"if has('nvim')
  "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  "Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
"else
  "Plug 'Shougo/deoplete.nvim'
  "Plug 'roxma/nvim-yarp'
  "Plug 'roxma/vim-hug-neovim-rpc'
  "Plug 'ternjs/tern_for_vim'
"endif
Plug 'posva/vim-vue'
Plug 'jparise/vim-graphql'
Plug 'hail2u/vim-css3-syntax'
Plug 'flowtype/vim-flow'
Plug 'scrooloose/nerdcommenter'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'mhinz/vim-startify'
"Plug 'airblade/vim-rooter'
Plug 'hashivim/vim-terraform'
" load these last
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
call plug#end()

let g:ctrlp_map = '<C-P>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
    \ 'dir': '\v[\/]\.(git|hg|svn)$|node_modules$|dist$',
    \ }
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

map <leader>bd :bp<CR>:bd#<CR>

noremap <C-w>z :ZoomWin<CR>

noremap <leader>n :NERDTreeToggle<CR>
noremap <leader>nf :NERDTreeFind<CR>

noremap <leader>tb :TagbarToggle<CR>
"noremap <leader>jf :%! python3 -m json.tool<CR>
au FileType json noremap <leader>jf :%! jq -M . %<CR>
au FileType xml noremap <leader>xf :%! xmlstarlet fo %<CR>

let g:vimwiki_list = [{'path_html': '~/public_html/wiki/', 'html_footer': '', 'maxhi': 1, 'index': 'index', 'path': '~/Documents/vimwiki/', 'gohome': 'split', 'ext': '.wiki', 'folding': 1, 'html_header': '', 'syntax': 'default', 'css_name': 'style.css'}]

let g:airline_powerline_fonts=1

if has('nvim')
  let g:deoplete#enable_at_startup = 1
endif

"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"
"let g:ale_set_loclist=0
"let g:ale_set_quickfix=1
"let g:ale_fix_on_save=1

" Set bin if you have many instalations
"let g:deoplete#sources#ternjs#tern_bin = '/path/to/tern_bin'
"let g:deoplete#sources#ternjs#timeout = 1

" let g:deoplete#complete_method = "omnifunc"
"
" Whether to include the types of the completions in the result data. Default: 0
let g:deoplete#sources#ternjs#types = 1

" Whether to include the distance (in scopes for variables, in prototypes for 
" properties) between the completions and the origin position in the result 
" data. Default: 0
let g:deoplete#sources#ternjs#depths = 1

" Whether to include documentation strings (if found) in the result data.
" Default: 0
"let g:deoplete#sources#ternjs#docs = 1

" When on, only completions that match the current word at the given point will
" be returned. Turn this off to get all results, so that you can filter on the 
" client side. Default: 1
let g:deoplete#sources#ternjs#filter = 0

" Whether to use a case-insensitive compare between the current word and 
" potential completions. Default 0
let g:deoplete#sources#ternjs#case_insensitive = 1

" When completing a property and no completions are found, Tern will use some 
" heuristics to try and return some properties anyway. Set this to 0 to 
" turn that off. Default: 1
let g:deoplete#sources#ternjs#guess = 0

" Determines whether the result set will be sorted. Default: 1
let g:deoplete#sources#ternjs#sort = 0

" When disabled, only the text before the given position is considered part of 
" the word. When enabled (the default), the whole variable name that the cursor
" is on will be included. Default: 1
let g:deoplete#sources#ternjs#expand_word_forward = 0

" Whether to ignore the properties of Object.prototype unless they have been 
" spelled out by at least two characters. Default: 1
let g:deoplete#sources#ternjs#omit_object_prototype = 0

" Whether to include JavaScript keywords when completing something that is not 
" a property. Default: 0
let g:deoplete#sources#ternjs#include_keywords = 1

" If completions should be returned when inside a literal. Default: 1
let g:deoplete#sources#ternjs#in_literal = 0

"Add extra filetypes
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ ]

" Use tern_for_vim.
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

let g:NERDTreeHighlightCursorline=0

"let g:syntastic_java_checkers = ['checkstyle']
"let g:syntastic_java_checkstyle_classpath = '/Users/jfox/dev/checkstyle/checkstyle-8.8-all.jar'
"let g:syntastic_java_checkstyle_conf_file = '/Users/jfox/dev/checkstyle/sun_checks.xml'
nnoremap <buffer> <silent> <leader>ff :ALEFix prettier<CR>

let g:ale_linters = {
\ 'graphql': ['gqlint'],
\ 'javascript': ['standard', 'eslint'],
\ 'typescript': ['standard', 'eslint', 'tsserver']
\}

let b:ale_fixers = ['standard', 'eslint', 'prettier']

augroup GPG
  autocmd!
  autocmd BufReadPost  *.asc :%!gpg -q -d
  autocmd BufReadPost  *.asc |redraw!
  autocmd BufWritePre  *.asc :%!gpg -q -e -a -r jofox@axcess-financial.com
  autocmd BufWritePost *.asc u
  autocmd VimLeave     *.asc :!clear
augroup END

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

let g:airline#extensions#tabline#enabled = 0

let g:secure_modelines_allowed_items = [
      \ "textwidth",   "tw",
      \ "softtabstop", "sts",
      \ "tabstop",     "ts",
      \ "shiftwidth",  "sw",
      \ "expandtab",   "et",   "noexpandtab", "noet",
      \ "filetype",    "ft",
      \ "foldmethod",  "fdm",
      \ "foldlevel",
      \ "readonly",    "ro",   "noreadonly", "noro",
      \ "rightleft",   "rl",   "norightleft", "norl"
      \ ]

"colorscheme torte
"colorscheme moonshine

syntax enable

"colorscheme apprentice
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

filetype plugin indent on

" after a re-source, fix syntax matching issues (concealing brackets):
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif
