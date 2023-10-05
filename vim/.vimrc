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
colorscheme catppuccin_mocha

"Call Vim-plug
call plug#begin('~/.vim/plugged')
	Plug 'dense-analysis/ale'|          "to install ALE
	Plug 'bstevary/betty-in-vim'|       "to install the script
	Plug 'wakatime/vim-wakatime'
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'preservim/nerdtree'
	Plug 'catppuccin/vim', { 'as': 'catppuccin' }
call plug#end()

let g:airline_theme = 'catppuccin_mocha'
let g:ale_linters = {'c':['betty-style', 'betty-doc', 'gcc']} "add betty to ale linters

"ultisnips config
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
