#!/bin/bash
# ----------------------------------
# Author: D0rkye
# Homepage: http://d0rkye.zsenialis.com/
# Most code probably by kyleabaker: http://kyleabaker.com/2010/07/11/how-to-fix-your-ubuntu-boot-screen/
# ----------------------------------
sudo apt-get install v86d hwinfo -y
sudo hwinfo --framebuffer
echo "---------------------------------------------------------------"
echo "Please enter the best resolution from the list above"
echo "It usualy looks like this >>Mode 0x0323: 1024x768 (+4096), 24 bits<<"
echo "And you have to enter it like this >>1024x768-24<<"
echo "---------------------------------------------------------------"
read resolution
sed 's/GRUB\_CMDLINE\_LINUX\_DEFAULT\=\"quiet\ splash\"/GRUB\_CMDLINE\_LINUX\_DEFAULT\=\"quiet\ splash\ nomodeset\ video\=uvesafb\:mode\_option\='$resolution'\,mtrr\=3\,scroll\=ywrap\"/g' /etc/default/grub > ./newgrub
sudo mv -f ./newgrub /etc/default/grub
sed 's/\#GRUB\_GFXMODE\=640x480/GRUB\_GFXMODE\='$resolution'/g' /etc/default/grub > ./newgrub
sudo mv -f ./newgrub /etc/default/grub
sudo echo "uvesafb mode_option=$resolution mtrr=3 scroll=ywrap" | sudo tee -a /etc/initramfs-tools/modules
echo FRAMEBUFFER=y | sudo tee /etc/initramfs-tools/conf.d/splash
sudo update-grub2
sudo update-initramfs -u
echo "The resolution should be fixed after a reboot"
