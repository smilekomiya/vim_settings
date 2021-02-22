#!/bin/bash 
set -eu

GIT_CONFIG_PATH="${HOME}/.gitconfig"
if [ -e $GIT_CONFIG_PATH ]; then
  read -p "${GIT_CONFIG_PATH} file exists. Replace it ? (y/n)" YN_GIT_CONFIG_FILE
  if [ "${YN_GIT_CONFIG_FILE}" == "y" ]; then
    rm -rf $GIT_CONFIG_PATH
    ln -s $PWD/.gitconfig $GIT_CONFIG_PATH
  else
     echo "${GIT_CONFIG_PATH} skipped"
  fi  
else
  ln -s $PWD/.gitconfig $GIT_CONFIG_PATH
fi

VIMRC_PATH="${HOME}/.vimrc"
if [ -e $VIMRC_PATH ]; then
  read -p "${VIMRC_PATH} file exists. Replace it ? (y/n)" YN_GITRC_FILE
  if [ "${YN_VIMRC_FILE}" == "y" ]; then
    rm -rf $VIMRC_PATH
    ln -s $PWD/.vimrc $VIMRC_PATH
  else
    echo "${VIMRC_PATH} skipped"
  fi
else
  ln -s $PWD/.vimrc $VIMRC_PATH
fi
