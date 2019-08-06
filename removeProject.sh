#!/bin/bash

echo Remove Project
echo
echo What project do you want to remove?
ls --color=auto ~/Projects
echo
echo -ne '? '
read name
echo -en Moving to trash..
mv -f ~/Projects/$name ~/Lib/trash/$name
echo done
echo Backup created at /home/$USER/Lib/trash/$name
echo -n Removing links..
rm ~/Lib/projects/*/$name
rm ~/Lib/bin/pro-$name
echo done
