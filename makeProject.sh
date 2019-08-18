#!/bin/bash

echo
cat ~/Lib/share/figlet-pro
echo
echo -n 'project name: ' 
read name
echo
ls --color=auto ~/Lib/projects/
echo
echo -n 'project catagorys (seperated by commas): '
read type
echo
echo -n makeing project..

#export naml
mkdir ~/Lib/projects/$type/ 2> /dev/null
mkdir ~/Projects/$name/
ln -s ~/Projects/$name ~/Lib/projects/{$type,all}/$name
cd ~/Projects/$name 
#mkdir ~/Projects/$name/lib
#mkdir ~/Projects/$name/bin
#mkdir `cat ~/Lib/format/project-folders`
#echo -e "#! /bin/bash\n# this is where your project starts\necho Hello, World!" > ~/Projects/$name/bin/$name
~/Lib/format/project-files $name
chmod +x bin/$name 2> /dev/null

#echo -e "*$name Project*\n\nProject: $name\nAuthor: $USER\nDescription: what is this project about?" >  ~/Projects/$name/README

#echo -e "* the first thing you need to do is make some to do's!\n* it's easy!" >  ~/Projects/$name/TODO
#chmod +x ~/Lib/bin/*

echo done
echo
