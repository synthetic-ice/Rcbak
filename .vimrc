set nocompatible
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
"Let vundle manage vundle, required Bundle 'gmarik/vundle'
"My bundles
"Bundle 'c.vim'
Bundle 'gmarik/vundle'
Bundle 'Valloric/ListToggle'
Bundle 'Valloric/YouCompleteMe'
"Bundle 'scrooloose/syntastic'
"Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'mattn/emmet-vim'
Bundle 'Raimondi/delimitMate'
Bundle 'Yggdroot/indentLine'
"Bundle 'bling/vim-airline'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'vimball'
Bundle 'easymotion/vim-easymotion'
Bundle 'ctrlp.vim'
Bundle 'tacahiroy/ctrlp-funky'
Bundle 'EasyGrep'
"Bundle 'bufexplorer.vim'
Bundle 'octol/vim-cpp-enhanced-highlight' 
Bundle 'Chiel92/vim-autoformat'
Bundle 'derekwyatt/vim-fswitch'
Bundle 'klen/python-mode'
Bundle 'surround.vim'
"Bundle 'html5.vim'
"Bundle 'fcitx.vim'
"Bundle 'pyflakes.vim'
"Bundle 'davidhalter/jedi-vim'

" Show line number, command, status line
set history=100
set ruler
set number
set showcmd
set showmode
set laststatus=2
set cmdheight=1
set scrolloff=3
set wildmenu

"Turn off annoying error soung
set noerrorbells
set novisualbell
set t_vb=

"Turn off splash screen
set shortmess=atI

"syntax and theme
syntax on
set background=dark
colorscheme monokai
set cursorline
set cursorcolumn

"Configure backspace to be able to acrosS two lines
set backspace=2
set whichwrap+=<,>,h,l

"Tab and indent
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set autoindent
set cindent

"Files, backups and encoding

set nobackup
set noswapfile
set autoread
set autowrite
set autochdir
set fileencodings=utf-8
set fileformats=unix,dos,mac
filetype plugin on
filetype indent on

"Text search and replace
set showmatch
set matchtime=2
set hlsearch
set incsearch
set ignorecase
set smartcase
set magic
set lazyredraw
set nowrapscan
set iskeyword+=_,$,@,%,#,-,.

"Code folding
set nofoldenable
set fdm=indent
"set fdm=syntax
"
" YCM
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_min_num_identifier_candidate_chars = 0
let g:ycm_auto_trigger = 1
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '!!'
let g:ycm_complete_in_comments = 1
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
set completeopt-=preview


"Syntastic configuration
let g:Syntastic_check_on_open=1

"ctrlp
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_syntax_highlight = 1

"emmet
let g:user_emmet_expandabbr_key = '<C-Space>'
let g:user_emmet_leader_key ='<C-y>'
let g:user_emmet_install_global = 0
  autocmd FileType html,css EmmetInstall

  "pymode
  let g:pymode = 1
  let g:pymode_options_max_line_length = 100
  let g:pymode_quickfix_minheight = 1
  let g:pymode_quickfix_maxheight = 2
  let g:pymode_pyton = 'python3'
  let g:pymode_lint_on_write = 1
  let g:pymode_lint_on_fly = 0
  let g:pymode_lint_message = 1
  let g:pymode_lint_cwindow = 1
  let g:pymode_lint_checkers = 'pep8'
  let g:pymode_run = 0
  let g:pymode_rope = 1
  let g:pymode_rope_completion = 1
  let g:pymode_rope_complete_on_dot = 0
  let g:pymode_rope_completion_bind = '<C-Space>'
  let g:pymode_rope_autoimport = 0
  let g:pymode_syntax = 1
  let g:pymode_syntax_slow_sync = 1
  let g:pymode_syntax_all = 1
  let g:pymode_syntax_print_as_function = 1
  let g:pymode_syntax_indent_errors = g:pymode_syntax_all
  let g:pymode_syntax_space_errors = g:pymode_syntax_all

" rainbow parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

"Airline 
let g:airline_theme = 'luna'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#tagbar#flags = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:airline#extensions#tabline#show_splits = 1
"let g:airline#extensions#tabline#switch_buffers_and_tabs = 0
"let g:airline#extensions#tabline#show_buffers = 1
"let g:airline#extensions#tabline#show_tabs = 1
"let g:airline#extensions#tabline#excludes = []
"let g:airline#extensions#tabline#exclude_preview = 1
"let g:airline#extensions#tabline#tab_nr_type = 0 " # of splits (default)
"let g:airline#extensions#tabline#show_tab_nr = 1
"let g:airline#extensions#tabline#show_tab_type = 1
"let g:airline#extensions#tabline#buffers_label = 'b'
"let g:airline#extensions#tabline#tabs_label = 'b'
"let g:airline#extensions#tabline#buffer_idx_mode = 1
"nmap <leader>1 <Plug>AirlineSelectTab1
"nmap <leader>2 <Plug>AirlineSelectTab2
"nmap <leader>3 <Plug>AirlineSelectTab3
"nmap <leader>4 <Plug>AirlineSelectTab4
"nmap <leader>5 <Plug>AirlineSelectTab5
"nmap <leader>6 <Plug>AirlineSelectTab6
"nmap <leader>7 <Plug>AirlineSelectTab7
"nmap <leader>8 <Plug>AirlineSelectTab8
"nmap <leader>9 <Plug>AirlineSelectTab9
"nmap <leader>- <Plug>AirlineSelectPrevTab
"nmap <leader>+ <Plug>AirlineSelectNextTab
let g:airline#extensions#ycm#enabled = 1
let g:airline#extensions#ycm#error_symbol = 'E:'
let g:airline#extensions#ycm#warning_symbol = 'W:'

"cpp highlightint
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1
let c_no_curly_error = 1

"tmux
if exists('$TMUX')
  set term=screen-256color
endif


let mapleader=";"
let g:mapleader=";"
nnoremap <leader>fu :CtrlPFunky<CR>
    "next/previous buffer
nnoremap <leader>n :bn<CR>
nnoremap <leader>p :bp<CR>
nnoremap <leader>w :bd<CR>
map <F2> :TagbarToggle<CR>
map <leader>il :IndentLinesToggle<CR>
"nmap <silent> <leader>gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <silent> <leader>sw :FSHere<CR>

"CPP shortcut
autocmd FileType c,cpp nnoremap <leader>r   <Esc>:w<CR>:!clang++ -Wall -Weffc++ -Wextra -O3 -pedantic -std=c++11 % -o /tmp/a.out && /tmp/a.out<CR>
autocmd FileType c,cpp nnoremap <F3>   <Esc>:w<CR>:!clang++ -Wall -std=c++11 %<CR>
autocmd FileType c,cpp nnoremap <C-F3> <Esc>:w<CR>:!/tmp/a.out<CR>
autocmd FileType c,cpp nnoremap <C-F4> <Esc>:w<CR>:!clang++ -Wall -std=c++11 -g % -o /tmp/a.out && gdb /tmp/a.out<CR>
autocmd FileType python nnoremap <leader>r   :!python3 %<CR>
