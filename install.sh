#!/bin/bash

FILE=$HOME/.vimrc
DIR=$HOME/.vim

echo "============================================================"
echo "Installing malev's vim-files to power up you vim experience."
echo "============================================================"
if [[ ! -f $FILE && ! -d $DIR ]]; then
  {
    echo ""
    echo "Installing .vimrc"
    ln -s /${PWD#*/}/vimrc "$FILE"
    echo "Installing .vim"
    ln -s /${PWD#*/}/vim "$DIR"
    echo "Done."
  }
else
  {
    echo "We are sorry, it seems as you already have some configuration files."
    echo "Please remove the first."
  }
fi
echo ""
echo "Please visit: blog.malev.com.ar"
echo ""
