#!/bin/bash

RED="\e[31m"
GREEN="\e[32m"
BLUE="\e[34m"
RESET="\e[0m"
BOLD="\e[1m"
INVERT="\e[7m"

root=$(pwd)
cd $root
result=""

promt () {
  echo
  echo -en "$GREEN$BOLD[$RESET$1$GREEN$BOLD]> $RESET"
}

clear

echo -e $GREEN $BOLD
cat share/figlet-pro
echo -e $RESET

echo
echo
echo

cd templates
ls *
cd $root

promt template
read template

echo
echo Clone git url. Enter to skip
promt git
read gitinit

echo
echo Initalize git?
echo -e "  yes no"
promt git
read gitinit
