#!/bin/bash

function virtualenvs_download {
  if [ ! -d ${HOME}/virtualenvs ] ;then
    git clone http://github.com/frgomes/virtualenvs
  fi
}

function virtualenvs_symlink {
  if [ ! -L ${HOME}/.virtualenvs ] ;then
    ln -s ${HOME}/virtualenvs ${HOME}/.virtualenvs
  fi
}

function virtualenvs_python3 {
  if [ $(which python3) ] ;then
    find ${HOME}/virtualenvs -mindepth 1 -maxdepth 1 -type d | fgrep -v .git | grep -v -E 'p2.*' | sort | while read path ;do
      virtualenv -p "$(which python3)" "$(basename ${path})"
    done
  else
    echo ERROR: could not find Python3
  fi
}

function virtualenvs_python2 {
  if [ $(which python2) ] ;then
    find ${HOME}/virtualenvs -mindepth 1 -maxdepth 1 -type d | fgrep -v .git | grep -E 'p2.*' | sort | while read path ;do
      virtualenv -p "$(which python2)" "$(basename ${path})"
    done
  else
    echo ERROR: could not find Python2
  fi
}

virtualenvs_download && virtualenvs_symlink && virtualenvs_python3 && virtualenvs_python2
