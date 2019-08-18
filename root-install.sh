#!/bin/bash


if [ "$EUID" -ne 0 ];
then
  echo Please run as root
  exit 1
fi

cp makeProject.sh /usr/local/bin/pro
cp removeProject.sh /usr/local/bin/pro-remove

echo done
