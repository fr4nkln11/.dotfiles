" Add numbers to each line on the left-hand side.
set number
set relativenumber
set numberwidth=2

" set indentation width
set shiftwidth=4

" Enable Indentation
filetype indent on

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Set tab width to 4 columns.
set tabstop=4
map <F8> :setlocal spell! spelllang=en_gb<CR>
set autoindent
set smartindent
set cindent
syntax enable
set list listchars=nbsp:¬,tab:»·,trail:·,extends:>
syntax on
set undofile
set undodir=/tmp
inoremap <C-H> <C-W>
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

colorscheme desert
