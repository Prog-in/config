"Call plugins file and config
if filereadable(expand('~/.vim/plugs_config.vim'))
    source ~/.vim/plugs_config.vim
endif

" Call plugins wizard
if filereadable(expand('~/.vim/autoload/plug.vim'))
    source ~/.vim/autoload/plug.vim
endif

" Call functions
if filereadable(expand('~/.vim/functions.vim'))
    source ~/.vim/functions.vim
endif

" --- general ---
set nocompatible " desabilita modo de compatibilidade: pode ser mais modificado
filetype indent on
filetype plugin indent on   " enable detection, plugins and indent 
set clipboard=unnamedplus   " using system clipboard
set encoding=utf-8
set showcmd        " show partial command in status line. 
syntax on          " syntax highlighting
"set number         " exibe o numero da linha do codigo na esquerda
set relativenumber " exibe o numero da linha atual e os numeros relativos das outras
set backspace=indent,eol,start " allow backspace over everything
set wildmenu
set wildmode=list:longest,list:full " costumize Vim tab-completion at the command prompt


" --- mouse ---
set mouse=a " enable mouse usage all modes
"set nomousehide " para de esconder o mouse


" --- ui ---
set t_Co=256 " 256 colors terminal
colorscheme gruvbox
set background=dark
"vsplit

" --- searching ---
set hlsearch   " highlight das pesquisas
set incsearch  " incremental serching 
set ignorecase " case insensitive matching
set smartcase  " smart case matching


" --- indentation and text-wrap ---
set expandtab                   " Expand tabs to spaces
set autoindent smartindent      " auto/smart indent
set copyindent                  " copy previous indentation on auto indent
set softtabstop=4               " Tab key results in # spaces
set tabstop=4                   " Tab is # spaces
set shiftwidth=4                " The # of spaces for indenting.
set smarttab                    " At start of line, <Tab> inserts shift width
                                "   spaces, <Bs> deletes shift width spaces.

set wrap                        " wrap lines
set textwidth=88
"set colorcolumn=+1              " Show large lines
set formatoptions=qrn1          " automatic formating.
set formatoptions-=o            " don't start new lines w/ comment leader on
                                "   pressing 'o'

set nomodeline                  " don't use modeline -security-

set pastetoggle=<leader>p       " paste mode: avoid auto indent, treat chars
                                "   as literal.


" --- performance / buffer ---
set hidden                  " can put buffer to the background without writing
                            "   to disk, will remember history/marks.
"set lazyredraw              " don't update the display while executing macros
set ttyfast                 " Send more characters at a given time.


" --- history / file handling ---
set history=999             " Increase history -default = 20-
set undolevels=999          " Moar undo -default=100-
set autoread                " reload files if changed externally


" --- backup and swap files ---
"set nobackup
"set nowritebackup
"set noswapfile


" ---- Nvim/Vim True Color Support ----
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
"if (empty($TMUX))
"  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
"    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
"  if (has("termguicolors"))
"    set termguicolors
"  endif
"endif


" verifica, sempre que o vim é aberto, se existem plugins definidos
" no arquivo que ainda não foram instalados. Caso encontre, os
" instala automaticamente
"call plug#end()
"autocmd VimEnter *
"if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
"\ | PlugInstall | q
"\ | endif

" colo murphy

let &t_ut=''
" vim hardcodes background color erase even if the terminfo file does
" not contain bce (not to mention that libvte based terminals
" incorrectly contain bce in their terminfo files). This causes
" incorrect background rendering when using a color theme with a
" background color.

