# myVimrc
my .vimrc for scheme and other language with plugins

basic settings follows [amix/vimrc](https://github.com/amix/vimrc), with minor modification

##how it looks


## how to use

install [vim-plug](https://github.com/junegunn/vim-plug):

eg, for *nix:

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

clone the .vimrc:

```sh
cd ~
git clone https://github.com/rain-bellinsky/myVimrc.git
cd myVimrc
mv .vimrc ~
cd ..
rm -rf myVimrc
```
open vi, under **normal mode** type:

```
:PlugInstall
```

after the installation, restart vim, enjoy!







