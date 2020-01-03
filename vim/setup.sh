#/bin/bash

dir=`dirname $0`

cp ${dir}/.vimrc ~/.vimrc
mkdir -p ~/.vim
cp -r ${dir}/zzy_vim/* ~/.vim
