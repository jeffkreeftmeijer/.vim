" Use Grim as the default color scheme
colorscheme grim

" Set both number and relativenumber for "hybrid" number mode[^1].
"
" [^1]: https://jeffkreeftmeijer.com/vim-number#hybrid-line-numbers
set number
set relativenumber

" Don't wrap lines
set nowrap

" Disable 'sensible' in vim-polyglot when using NeoVim to prevent[^1] polyglot
" from setting NeoVim's already-sensible defaults[^2] again.
"
" [^1]: https://github.com/sheerun/vim-polyglot/blob/73c518717741fb3ebb6822645d38f37ffae7c19b/plugin/polyglot.vim#L20
" [^2]: https://github.com/neovim/neovim/issues/2676
if has('nvim')
  let g:polyglot_disabled = ['sensible']
endif

" Install coc.nvim plugins
let g:coc_global_extensions = ['coc-elixir', 'coc-rls', 'coc-vimlsp']

" Store coc configuration in ~/.vim
let g:coc_config_home = $HOME . "/.vim/"

" Use <TAB> to toggle completion suggestions
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
