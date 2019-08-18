#!/bin/bash


if [ "$EUID" -ne 0 ];
then
  > /dev/null
else
  echo 'You are running this as root. This will install at /root. (enter to install)'
  read
fi

mkdir ~/Projects 2> /dev/null
cp -r Lib ~/ 2> /dev/null
chmod +x ~/Lib/format/*


echo done

echo Now run root-install.sh as superuser
