#!/bin/bash

echo Remove Project
echo
echo What project do you want to remove?
echo
ls --color=auto ~/Projects
echo
echo -ne "$PS2 "
read name
echo -en Removeing Project..
rm -r ~/Projects/$name
echo done
echo -n Removing links..
rm ~/Lib/projects/*/$name
echo done
