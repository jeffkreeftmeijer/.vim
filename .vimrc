" Download plug.vim if it doesn't exist yet
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source ~/.vimrc
\| endif

" Always use the system clipboard
set clipboard+=unnamedplus

call plug#begin("~/.vim/plugged")
Plug 'sheerun/vim-polyglot'
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'jeffkreeftmeijer/vim-nightfall'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

" Use Dim as the default color scheme
colorscheme dim

" Turn on line numbers
set number

" Install Coc extensions for Elixir, Ruby, Rust, Typescript and VimL
let g:coc_global_extensions = ['coc-elixir', 'coc-solargraph', 'coc-rls', 'coc-tsserver', 'coc-vimlsp']

" Automatically format Elixir, Rust and Typescript files on save
let g:coc_user_config = {"coc.preferences.formatOnSaveFiletypes": ["elixir", "rust", "typescript"]}

" Use <cr> to select the first completion
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
