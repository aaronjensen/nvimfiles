set runtimepath^=./repos/github.com/Shougo/dein.vim
call dein#begin(expand('.'))

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/deoplete.nvim')

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

let g:deoplete#enable_at_startup = 1
