" Download plug.vim if it doesn't exist yet
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source ~/.vimrc
\| endif

" Add ~/.vim to the runtime path
set runtimepath +=~/.vim

call plug#begin()

Plug 'sheerun/vim-polyglot'
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'jeffkreeftmeijer/vim-nightfall'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

call plug#end()

" Use Dim as the default color scheme
colorscheme dim

" Turn on line numbers
:set number
