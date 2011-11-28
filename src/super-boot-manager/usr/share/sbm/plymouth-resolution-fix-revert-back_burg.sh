#!/bin/sh

# Author: Kyle Baker (kyleabaker)
# Web: http://www.kyleabaker.com/

# This script was based on the tutorial by Marius Nestor
# http://news.softpedia.com/news/How-to-Fix-the-Big-and-Ugly-Plymouth-Logo-in-Ubuntu-10-04-140810.shtml

# Step 1
sudo apt-get purge v86d -y

# Step 2
# Replace:
# -: GRUB_CMDLINE_LINUX_DEFAULT="quiet splash nomodeset video=uvesafb:mode_option=1280x1024-24,mtrr=3,scroll=ywrap"
# +: GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"
sed 's/GRUB\_CMDLINE\_LINUX\_DEFAULT\=\"quiet\ splash\ nomodeset\ video\=uvesafb\:mode\_option\=1280x1024-24\,mtrr\=3\,scroll\=ywrap\"/GRUB\_CMDLINE\_LINUX\_DEFAULT\=\"quiet\ splash\"/g' /etc/default/burg > ./temp
sudo mv -f ./temp /etc/default/burg

# Replace:
# -: GRUB_GFXMODE=1280x1024
# +: #GRUB_GFXMODE=640x480
sed 's/GRUB\_GFXMODE\=1280x1024/\#GRUB\_GFXMODE\=640x480/g' /etc/default/burg > ./temp
sudo mv -f ./temp /etc/default/burg

# Step 3
sed 's/uvesafb\ mode\_option\=1280x1024-24\ mtrr\=3\ scroll\=ywrap//g' /etc/initramfs-tools/modules > ./temp
sudo mv -f ./temp /etc/initramfs-tools/modules

# Step 4
sed 's/FRAMEBUFFER\=y//g' /etc/initramfs-tools/conf.d/splash > ./temp
sudo mv -f ./temp /etc/initramfs-tools/conf.d/splash

# Step 5
sudo update-burg

# Step 6
sudo update-initramfs -u

# Step 7
echo "     Reverting changes complete, reboot to test changes!"
