" Use Dim as the default color scheme
colorscheme dim

" Set both number and relativenumber for "hybrid" number mode[^1].
"
" [^1]: https://jeffkreeftmeijer.com/vim-number#hybrid-line-numbers
set number
set relativenumber

" Disable 'sensible' in vim-polyglot when using NeoVim to prevent[^1] polyglot
" from setting NeoVim's already-sensible defaults[^2] again.
"
" [^1]: https://github.com/sheerun/vim-polyglot/blob/73c518717741fb3ebb6822645d38f37ffae7c19b/plugin/polyglot.vim#L20
" [^2]: https://github.com/neovim/neovim/issues/2676
if has('nvim')
  let g:polyglot_disabled = ['sensible']
endif

" Use netrw's tree view
let g:netrw_liststyle = 3
" Hide netrw's help banner (toggle with I)
let g:netrw_banner = 0
" Open files in the previous split
let g:netrw_browse_split = 4
