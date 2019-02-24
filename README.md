# myVimrc
My .vimrc for scheme and other language, with a monokai theme and useful plugins

Basic settings follows [amix/vimrc](https://github.com/amix/vimrc), with minor modification

## how it looks

<img src="https://github.com/rain-bellinsky/myVimrc/blob/master/screenshot1.png" height="450">

<img src="https://github.com/rain-bellinsky/myVimrc/blob/master/screenshot2.png" height="450">

## how to use
In order to use [Tagbar](https://github.com/majutsushi/tagbar) for vim, install exuberant-ctags:
```sh
sudo apt install exuberant-ctags
```

Install [vim-plug](https://github.com/junegunn/vim-plug):

Eg, for *nix:

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Clone the .vimrc:

```sh
cd ~
git clone https://github.com/rain-bellinsky/myVimrc.git
cd myVimrc
mv .vimrc ~
cd ..
rm -rf myVimrc
```
Open vi, under **normal mode** type:

```
:PlugInstall
```

After the installation, restart vim, enjoy!

## FAQ

### Why the color scheme doesn't work?

A: Your terminal should support 256 colors to use this vimrc, if it doesn't by default, try add
   this to your ~/.bashrc:

```sh

if [ "$TERM" == "xterm" ]; then
    export TERM=xterm-256color
fi

```

  If you are using Tmux, try add this to your ~/.tmux.conf:

```
#comment either one with # to see if it works:
set -g default-terminal "screen-256color"
#set -g default-terminal "xterm-256color"

```

  In most cases, this will solve your problem.









