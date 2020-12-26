# ~/.vim

My (Neo)Vim configuration.

## Install

Back up your own `~/.vim` if you have one, then:

    $ git clone git@github.com:jeffkreeftmeijer/.vim.git ~/.vim
    $ git -C ~/.vim submodule init && git -C ~/.vim submodule update
    $ mkdir -p ~/.config/nvim && ln -s ~/.vim/.vimrc ~/.vimrc && ln -s ~/.vim/.vimrc ~/.config/nvim/init.vim
    $ npm --prefix ~/.vim/coc/extensions install

##  Uninstall

Back up any changes you made to `~/.vim` or `~/.vimrc`, then:

    $ rm -rf ~/.vimrc ~/.config/nvim/init.vim ~/.vim
