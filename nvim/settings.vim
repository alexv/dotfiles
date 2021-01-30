"===================="
" Some basic options "
"===================="

set backspace=indent,eol,start       " Make backspace sane
set cursorline                       " Highlight current line
set encoding=utf-8                   " Set default encoding to UTF-8
set hidden                           " Hides buffers instead of closing them
set scrolloff=5                      " Leaves room when scrolling up/down
set ttyfast lazyredraw               " Indicates a fast terminal connection
set directory=$HOME/.vimswap         " Directory for swap files
set undofile                         " Preserve undo history after closing file
set undodir=$HOME/.vim/undodir       " Where to save undo history
set clipboard=unnamed
set gdefault                         " Global default search
set history=1000                     " Command line history
set incsearch                        " Incrementally search buffer
set hlsearch                         " Highlight search results
set expandtab                        " Expand tabs to spaces
set tabstop=4                        " Number of spaces a tab counts for
set shiftwidth=2                     " Number of spaces for each step of autoindent
set softtabstop=2                    " Number of spaces a tab counts for when editing
set relativenumber number            " Line numbers, relative to current line
set noshowmode                       " Don't dispay mode in command line (airline shows it)
set ignorecase smartcase             " Smart search matching
set splitbelow splitright            " Split down then right
set viewoptions=cursor,folds         " Save cursor position and folds
set wildmenu                         " Autocomplete command line
set wildmode=list:longest            " Order command options
set autoindent smartindent nocindent " Make indent work
set nowrap                           " Don't wrap lines, even on small screens

" Set language overrides
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

" Mouse support
set mouse=a
if &term =~ '^screen'
  set ttymouse=xterm2
endif

" Change cursor based on vim mode
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" Pencil settings
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
