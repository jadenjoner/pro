#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
BLUE='\033[0;34m'
RESET='\033[0m'

# Project Input
echo -e $BLUE
cat ~/Lib/share/figlet-pro
echo -e $RESET
echo -n 'project name: ' 
read name
echo -e $BLUE
ls ~/Lib/projects/
echo -e $RESET
#echo -n 'project catagorys (seperated by commas): '
echo -n 'project catagory: '
read type
echo -e $GREEN
echo -en makeing project..$RED

# Make the Project
mkdir ~/Lib/projects/$type/ 2> /dev/null
mkdir ~/Projects/$name/
ln -s ~/Projects/$name ~/Lib/projects/$type/$name 
cd ~/Projects/$name 
~/Lib/format/project-files $name
chmod +x bin/$name 2> /dev/null

echo -e $GREEN'done'$RESET

# Git

echo -n 'Clone git repository? (y,N) '
read answer

if [[ $answer =~ ^[Yy]$ ]]
then
  echo -n 'repo url: '
  read giturl
  cd ~/Projects/$name
  rm -r *
  git clone $giturl > /dev/null
  echo -e $GREEN'done'$RESET
fi

