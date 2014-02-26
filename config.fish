# Path to your oh-my-fish.
set fish_path $HOME/Dropbox/configs/oh-my-fish

# Theme
#set fish_theme robbyrussell
#set fish_theme numist
set fish_theme zish
#set fish_theme numist

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler
set fish_plugins autojump bundler vi-mode brew

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

. ~/.config/alias

set -x PATH /Users/wenhuxian/homebrew/bin $PATH
set -x PATH /Users/wenhuxian/homebrew/sbin $PATH

set -x GOPATH $HOME/work/git/ke2
set -x GOROOT /Users/wenhuxian/go

set -x PATH $GOROOT/bin $PATH
set -x PATH $GOPATH/bin $PATH

set -x EDITOR "vim"

set -x DISABLE_AUTO_TITLE = 'true'

