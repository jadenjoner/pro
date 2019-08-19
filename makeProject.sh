#!/bin/bash

# Project Input
echo
cat ~/Lib/share/figlet-pro
echo
echo -n 'project name: ' 
read name
echo
ls --color=auto ~/Lib/projects/
echo
#echo -n 'project catagorys (seperated by commas): '
echo -n 'project catagory: '
read type
echo
echo -n makeing project..

# Make the Project
mkdir ~/Lib/projects/$type/ 2> /dev/null
mkdir ~/Projects/$name/
ln -s ~/Projects/$name ~/Lib/projects/$type/$name 
cd ~/Projects/$name 
~/Lib/format/project-files $name
chmod +x bin/$name 2> /dev/null

echo done
echo
