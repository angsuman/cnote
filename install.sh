#!/bin/bash
# The installer is in BETA. Use at your own risk!
# It will place the CNote code at the very end of ~/.bashrc, ignoring it's current location. You can manually move the code block anywhere in the file.

echo Creating a backup of .bashrc
cp ~/.bashrc ~/.bashrc.backup

echo Replacing old CNote code from ~/.bashrc and saving it in temp directory:  /tmp
cat ~/.bashrc | sed '/# Command Line Note Taker/,/####/ d'  > /tmp/.bashrc

echo Fetching latest version of CNote from Github Repository and appending it to .bashrc in temp directory
wget --no-check-certificate  -q -O- https://raw.githubusercontent.com/angsuman/cnote/master/n.sh >> /tmp/.bashrc

echo Replacing ~/.bashrc with the updated version in temp directory
mv /tmp/.bashrc  ~/.bashrc

# The backup file is kept for you to revert, in case the script made any error(r). You may decide to remove it by uncommenting the line below:
# rm ~/.bashrc.backup

echo Sourcing the new .bashrc so you can use the updated command in this terminal. 
echo It will be automatically available in all new terminals.
echo For existing terminals, run the command manually in that terminal: . ~/.bashrc
. ~/.bashrc
