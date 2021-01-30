"================="
" Vim Plug Config "
"================="

" If vim-plug is not installed, install it.
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Enable plugins
call plug#begin('~/.vim/plugged')
  Plug 'arcticicestudio/nord-vim'                     " best theme
  Plug 'vim-airline/vim-airline'                      " style
  Plug 'vim-airline/vim-airline-themes'               " style themes
  Plug 'tpope/vim-fugitive'                           " git support
  Plug 'tpope/vim-surround'                           " surround parentheses and stuff
  Plug 'tpope/vim-commentary'                         " comment support
  Plug 'airblade/vim-gitgutter'                       " git status by line
  Plug 'vim-scripts/netrw.vim'                        " file tree
  Plug 'Valloric/MatchTagAlways'                      " match the tags
  Plug 'junegunn/vim-easy-align'                      " align comments
  Plug 'ctrlpvim/ctrlp.vim'                           " file search
  Plug 'vim-scripts/restore_view.vim'                 " preserve view after close
  Plug 'neoclide/coc.nvim', {'branch': 'release'}     " Intellisense
  Plug 'junegunn/goyo.vim', {'for': 'markdown'}       " zen mode
  Plug 'godlygeek/tabular', {'for': 'markdown'}       " tabs for md
  Plug 'plasticboy/vim-markdown', {'for': 'markdown'} " markdown
  Plug 'reedes/vim-pencil', {'for': 'markdown'}       " markdown
call plug#end()

" Theme options
let g:airline_powerline_fonts = 1
let g:nord_italic_comments = 1

" Markdown options
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1

" Go Options
let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1

" Other options
let g:netrw_liststyle = 3
let g:netrw_banner = 0

" Color settings
colorscheme nord
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

