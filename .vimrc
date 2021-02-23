set nocompatible

" plug {{{
" ==============================================================================

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'crusoexia/vim-dracula'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tomasiser/vim-code-dark', { 'for': 'python' }
Plug 'altercation/vim-colors-solarized'
Plug 'sonph/onehalf'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }

Plug 'airblade/vim-gitgutter', { 'on': 'GitGutterToggle' }

function! BuildYCM(info)
  if a:info.status == 'installed' || a:info.force
    !python3 ./install.py --clang-completer
  endif
endfunction

Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeTabsToggle', 'NERDTreeFind'] }
Plug 'jistr/vim-nerdtree-tabs', { 'on': ['NERDTreeTabsToggle', 'NERDTreeFind'] }

Plug 'octol/vim-cpp-enhanced-highlight', { 'for': 'cpp' }

Plug 'jceb/vim-orgmode', { 'for': 'org' }
Plug 'tpope/vim-speeddating', { 'for': 'org' }

Plug 'tikhomirov/vim-glsl', { 'for': 'glsl' }
Plug 'PotatoesMaster/i3-vim-syntax', { 'for': 'i3' }
Plug 'tpope/vim-commentary'

Plug 'junegunn/rainbow_parentheses.vim'

Plug 'jeetsukumaran/vim-pythonsense', { 'for': 'python' }
Plug 'vim-syntastic/syntastic', { 'for': 'python' }

" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-latex/vim-latex'
" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

Plug 'joshdick/onedark.vim'

call plug#end()

" }}}
" rainbow_parentheses {{{
" ==============================================================================
let g:rainbow#max_level = 20
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}'], ['<', '>']]
" }}}
" common {{{
" ==============================================================================

if has("termguicolors")
  let &t_8f = "\e[38;2;%lu;%lu;%lum"
  let &t_8b = "\e[48;2;%lu;%lu;%lum"
  set termguicolors
endif

let mapleader = ','
let maplocalleader = ' '

" Folds
set foldmethod=syntax
set foldlevel=20
set nofoldenable

set autoindent
set autoread
set backspace=eol,start,indent
set cursorline
set encoding=utf8
set expandtab
set fileformats=unix,dos,mac
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set magic
set matchtime=2
set modelines=1
set mouse=a
set nobackup
set noerrorbells visualbell vb t_vb=
set noswapfile
set nowrap
set nowritebackup
set number
set relativenumber
set ruler
set shiftwidth=4
set showcmd
set showmatch
set smartcase
set smartindent
set smarttab
set softtabstop=4
set splitbelow
set splitright
set tabstop=4
set title
set ttimeoutlen=1000 ttimeoutlen=0
set whichwrap+=<,>,h,l
set wildignorecase
set wildmenu
set wildmode=longest,list,full
set wrapscan

" Enable I-beam cursor in terminal
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

try
  set undodir=~/.vim/tmpdirs/undodir
  set undofile
catch
endtry

let g:load_doxygen_syntax = 1

" }}}
" maps {{{
" ==============================================================================

nnoremap ; :

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <C-Left> <C-w>h
nnoremap <C-Down> <C-w>j
nnoremap <C-Up> <C-w>k
nnoremap <C-Right> <C-w>l

nnoremap <CR> o<Esc>
nnoremap <S-CR> O<Esc>

vnoremap < <gv
vnoremap > >gv

nnoremap <silent> <leader>e :tabnew ~/AdoreIt/LinuxSetup/.vimrc<CR>
nnoremap <silent> <leader>t :tabnew<CR>

nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p

nnoremap <silent> <leader>w :w<CR>
nnoremap <silent> <leader>q :q<CR>

nnoremap <silent> <leader><space> :noh<CR>

nnoremap <silent> <leader>s :call FormatFile() <bar> update<CR>

nnoremap <silent> <Esc><Left> :tabprev<CR>
nnoremap <silent> <Esc><Right> :tabnext<CR>
nnoremap <silent> <Esc>h :tabprev<CR>
nnoremap <silent> <Esc>l :tabnext<CR>

nnoremap <silent> <Esc>1 :tabnext 1<CR>
nnoremap <silent> <Esc>2 :tabnext 2<CR>
nnoremap <silent> <Esc>3 :tabnext 3<CR>
nnoremap <silent> <Esc>4 :tabnext 4<CR>
nnoremap <silent> <Esc>5 :tabnext 5<CR>

vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

nnoremap <Tab> za

nnoremap <silent> <leader><leader> :e#<CR>

nnoremap <silent> <leader>l :!docker run --rm -it -v $(pwd):/var/texlive babbage/latex-dstu pdflatex_full
" }}}
" colorscheme {{{
" ==============================================================================

set background=dark

try
  " let g:solarized_termcolors=256
  let g:dracula_italic = 1
  colorscheme onedark
  " colorscheme solarized
  " set t_Co=256
  " colorscheme onehalfdark
catch
endtry

let &colorcolumn = join(range(101, 300), ',')

" }}}
" airline {{{
" ==============================================================================

let g:airline_theme = 'codedark'
let g:airline_powerline_fonts = 1

" }}}
" fzf {{{

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

let g:fzf_layout = { 'down': '~40%' }

let g:fzf_colors = {
  \ 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Constant'],
  \ 'pointer': ['fg', 'Normal'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Type'] }

let g:fzf_history_dir = '~/.local/share/fzf-history'

nnoremap <C-p> :FZF<CR>

" }}}
" UltiSnips {{{
" ==============================================================================

" Trigger configuration. Do not use <Tab> if you use YouCompleteMe.
let g:UltiSnipsExpandTrigger="<C-b>"
let g:UltiSnipsJumpForwardTrigger="<C-b>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"

" }}}
" YouCompleteMe {{{
" ==============================================================================

nnoremap <leader>gd :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gi :YcmCompleter GoToInclude<CR>

set completeopt-=preview

let g:ycm_enable_diagnostic_signs = 0
let g:ycm_confirm_extra_conf = 0

" }}}
" delimitMate {{{
" ==============================================================================

let delimitMate_expand_cr = 1

" }}}
" NERDTree {{{
" ==============================================================================

let NERDTreeMapActivateNode = 'l'
let NERDTreeMapChangeRoot = 'L'
let NERDTreeMapUpdirKeepOpen = 'h'
let NERDTreeMapUpdir = 'H'

let NERDTreeShowHidden = 0
let NERDTreeIgnore = ['\.swp']
let NERDTreeChDirMode = 2 " Change CWD whenever tree root is changed
let NERDTreeMinimalUI = 1
let NERDTreeWinSize = 20

let g:nerdtree_tabs_open_on_gui_startup = 0
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

nnoremap <leader>n :NERDTreeTabsToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

" }}}
" Git Gutter {{{
" ==============================================================================

"if exists('&signcolumn')
"    set signcolumn=yes
"else
"    let g:gitgutter_sign_column_always = 1
"endif

hi GitGutterAdd    guifg=#009900 guibg=NONE ctermfg=2 ctermbg=NONE
hi GitGutterChange guifg=#bbbb00 guibg=NONE ctermfg=3 ctermbg=NONE
hi GitGutterDelete guifg=#ff2222 guibg=NONE ctermfg=1 ctermbg=NONE

let g:gitgutter_enabled=0

nnoremap <silent> <leader>d :GitGutterToggle<CR>

" }}}
" Helper functions {{{
" ==============================================================================

function! FormatFile()
  let l:lines="all"
  py3f ~/.clang-format.py
endfunction

function! VisualSelection(direction, extra_filter) range
  let l:saved_reg = @"
  execute "normal! vgvy"

  let l:pattern = escape(@", "\\/.*'$^~[]")
  let l:pattern = substitute(l:pattern, "\n$", "", "")

  if a:direction == 'gv'
      call CmdLine("Ag '" . l:pattern . "' " )
  elseif a:direction == 'replace'
      call CmdLine("%s" . '/'. l:pattern . '/')
  endif

  let @/ = l:pattern
  let @" = l:saved_reg
endfunction

" }}}
" vim-cpp-enhanced-highlight {{{

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_no_function_highlight = 1
let g:cpp_concepts_highlight = 1

" }}}
" markdown-preview {{{
" ==============================================================================


" Start the preview
":MarkdownPreview

" Stop the preview"
"":MarkdownPreviewStop


" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 1

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 1

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {}
    \ }

" use a custom markdown style must be absolute path
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" }}}

let g:syntastic_python_checkers = ['flake8']

autocmd FileType python nnoremap <leader>s :0,$!yapf<Cr>
autocmd FileType cpp setlocal commentstring=//\ %s

" vim:foldmethod=marker:foldlevel=0
