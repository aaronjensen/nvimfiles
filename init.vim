set runtimepath^=./repos/github.com/Shougo/dein.vim
call dein#begin(expand('.'))

call dein#add('Shougo/dein.vim')

call dein#add('Shougo/deoplete.nvim')
let g:deoplete#enable_at_startup = 1
inoremap <silent><expr> <Tab>
\ pumvisible() ? "\<C-n>" :
\ deoplete#mappings#manual_complete()
inoremap <silent><expr> <S-Tab>
\ pumvisible() ? "\<C-p>" :
\ deoplete#mappings#manual_complete()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Surrond stuff with things. ysiw" surrounds a word with quotes
" cs"' changes " to '
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('tpope/vim-surround')

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Lets you use . to repeat some things like vim-surround
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('tpope/vim-repeat')

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" projectionist.vim
"
" Gives :A and :E* and such like rails.vim but for other languages/projects
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('tpope/vim-projectionist')

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Comment with gc (takes a motion) or ^_^_
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('tomtom/tcomment_vim')

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" matchindent.vim
"
" Attempt to guess and automatically set the indentation settings of the
" opened file. Works for " 2 space, 4 space and tab indentation.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('conormcd/matchindent.vim')

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Elixir
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('elixir-lang/vim-elixir', {'on_ft': ['elixir']})
call dein#add('slashmili/alchemist.vim', {'on_ft': ['elixir']})

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" My favorite dark color scheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call dein#add('tomasr/molokai')
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai

call dein#end()

filetype plugin indent on

if dein#check_install()
  call dein#install()
endif

set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Searching
set ignorecase
set smartcase

" Open splits below and right by default
set splitbelow
set splitright

" Show 2 lines of context
set scrolloff=2

" Persistent undo
set undofile
set undolevels=1000
set undoreload=10000

" Show (partial) command in the status line
set showcmd
