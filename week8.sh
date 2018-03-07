#! /bin/sh
# Week 8
# Don Yang
# CSCI 2461-70


echo "\n---- This is week 8's assignment" 
echo "\n---- This is your home directory:"
cd
ls

echo "\n---- This is your current directory"
pwd 

echo "\n---- I just created a new directory in your home directory called test"
mkdir test
ls

echo "\n---- I just created a new document in the test directory named newDoc"
cd test
ls
touch newDoc.txt

echo "\n---- I just added a joke to your document"
echo "I stepped on a Corn Flake, now I'm a Cereal Killer" > newDoc.txt

echo "\n---- Here is what's in your document"
cat newDoc.txt

echo "\n---- Searching the document for the word now"
# globbing
grep now *

echo "\n---- Copied newDoc.txt and renamed it anotherDoc.txt with added text"
cp newDoc.txt anotherDoc.txt
echo "this is another doc" >> anotherDoc.txt
ls

echo "\n---- Displays the difference between the two files"
diff newDoc.txt anotherDoc.txt

echo "\n---- Shows what type of file this is"
file newDoc.txt

echo "\n---- Here are all the devices in your dev folder"
cd /dev; ls
cd

echo "\n---- Here are your block devices"
blkid; lsblk

echo "\n---- Here are your disk"
sudo fdisk -l /dev/sda

echo "\n---- List inodes for each file in directory"
ls -iR

echo "\n---- View kernel parameters"
cat /proc/cmdline

echo "\n---- View upstart jobs"
initctl list

echo "\n---- This is your current run level"
who -r
runlevel

echo "\n---- This is your "
dd if=/dev/urandom of=/dev/full bs=100 count=1

echo "\n---- These are your connected devices"
sudo fdisk -l

echo "\n---- This is the available space in your devices"
df

# Gives option to look at grub.cfg file
tput setaf 1; echo
echo "---- Would you like to see whats in your grub file?"
tput setaf 7; echo
read TYPE

if [ "$TYPE" = Yes ]; then
	cat | less /boot/grub/grub.cfg
elif [ "$TYPE" = yes ]; then
	cat | less /boot/grub/grub.cfg
elif [ "$TYPE" = Y ]; then
	cat | less /boot/grub/grub.cfg
elif [ "$TYPE" = y ]; then
	cat | less /boot/grub/grub.cfg
else 
	echo "okay then I wont show you :P"
fi






