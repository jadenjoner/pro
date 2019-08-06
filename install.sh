#!/bin/bash


if [ "$EUID" -ne 0 ]
  mkdir ~/Projects
  cp -r Lib ~/
  chmod +x ~/Lib/format/*
  echo 'export PATH=$PATH:~/Lib/bin' >> ~/.bashrc

  then echo "Now you can run this as root"
  exit
fi

cp makeProject.sh /usr/local/bin/pro
echo done
