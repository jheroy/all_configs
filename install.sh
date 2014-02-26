#!/bin/bash
CONFIGS=(.vim .vimrc .tmux.conf .tmuxp .config/alias .config/fish/config.fish)
for path in ${CONFIGS[@]}; do
        echo ~/$path
        if [[ -L ~/$path ]]; then
                #if [[ -e ${path}.bak ]]; then
                #        rm -rf ${path}.bak
                #fi
                rm ~/$path
        elif [[ -e ~/$path ]]; then
                mv ~/$path ~/${path}.bak
        fi
done

CONF_PATH=`dirname $0`

echo $CONF_PATH

ln -s $CONF_PATH/vim $HOME/.vim
ln -s $CONF_PATH/vimrc $HOME/.vimrc
ln -s $CONF_PATH/tmux/tmux.conf $HOME/.tmux.conf
ln -s $CONF_PATH/tmux/tmuxp $HOME/.tmuxp

mkdir -p $HOME/.config/fish

ln -s $CONF_PATH/alias $HOME/.config/alias
ln -s $CONF_PATH/config.fish $HOME/.config/fish/config.fish

