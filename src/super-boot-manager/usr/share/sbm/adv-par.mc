<config>
<global>
cd /usr/share/sbm/
</global>
<global var="language">
language=$(cat ~/.sbm/language)
echo $language
</global>
<label>tabtitle5=$(head -22 /usr/share/sbm/$language | tail -1)
echo $tabtitle5</label>

<hlayout>
<label>
p9=$(head -23 /usr/share/sbm/$language | tail -1)
echo $p9 
</label>
<label>echo " "</label>
<button height="15">
<title>
b9=$(head -24 /usr/share/sbm/$language | tail -1)
echo $b9
</title>
<code>
gedit /etc/default/burg || kate /etc/default/burg || leafpad /etc/default/burg
</code>
</button>
</hlayout>
<hlayout>
<label>echo "GRUB_DISABLE_LINUX_RECOVERY"</label>
<button height="15">
<title>
b10=$(head -25 /usr/share/sbm/$language | tail -1)
echo $b10
</title>
<code>
sed -i /GRUB_DISABLE_LINUX_RECOVERY/d /etc/default/burg 
grubrecovery='GRUB_DISABLE_LINUX_RECOVERY="'true'"' 
echo $grubrecovery >> /etc/default/burg
</code>
</button>
<button height="15">
<title>
b11=$(head -26 /usr/share/sbm/$language | tail -1)
echo $b11
</title>
<code>
sed -i /GRUB_DISABLE_LINUX_RECOVERY/d /etc/default/burg
</code>
</button>
</hlayout>
<hlayout>
<label>echo "GRUB_CMDLINE_LINUX_DEFAULT"</label>
<text var="cmdline">ln=$(cd /usr/share/sbm && ./grub_cmdline) && echo "$ln"</text>

<button height="15">
<title>
b12=$(head -27 /usr/share/sbm/$language | tail -1)
echo $b12
</title>
<code>
sed -i /GRUB_CMDLINE_LINUX_DEFAULT/d /etc/default/burg 
gdefault='GRUB_CMDLINE_LINUX_DEFAULT="'$cmdline'"'  
echo $gdefault >> /etc/default/burg
</code>
</button>
</hlayout>
<hlayout>
<label>echo "GRUB_SAVEDEFAULT"</label>
<button height="15">
<title>
b10=$(head -25 /usr/share/sbm/$language | tail -1)
echo $b10
</title>
<code>
//grubsd='GRUB_SAVEDEFAULT="'true'"' 
//echo $grubsd >> /etc/default/burg
xterm -e "sudo sed -i 's/GRUB_SAVEDEFAULT=[a-z]*/GRUB_SAVEDEFAULT=true/g;s/^#GRUB_SAVE/GRUB_SAVE/g' /etc/default/burg"
</code>
</button>
<button height="15">
<title>
b11=$(head -26 /usr/share/sbm/$language | tail -1)
echo $b11
</title>
<code>
//sed -i /GRUB_SAVEDEFAULT/d /etc/default/burg
xterm -e "sudo sed -i 's/GRUB_SAVEDEFAULT=[a-z]*/GRUB_SAVEDEFAULT=false/g;s/^#GRUB_SAVE/GRUB_SAVE/g' /etc/default/burg"
</code>
</button>
</hlayout>
<hlayout>
<label>echo "GRUB_LINUX16"</label>
<button height="15">
<title>
b10=$(head -25 /usr/share/sbm/$language | tail -1)
echo $b10
</title>
<code>
grublinux='GRUB_LINUX16="'true'"' 
echo $grublinux >> /etc/default/burg
</code>
</button>
<button height="15">
<title>
b11=$(head -26 /usr/share/sbm/$language | tail -1)
echo $b11
</title>
<code>
sed -i /GRUB_LINUX16/d /etc/default/burg
</code>
</button>
</hlayout>
<hlayout>
<label>echo "GRUB_DISABLE_LINUX_UUID"</label>
<button height="15">
<title>
b10=$(head -25 /usr/share/sbm/$language | tail -1)
echo $b10
</title>
<code>
grubuuid='GRUB_DISABLE_LINUX_UUID="'true'"' 
echo $grubuuid >> /etc/default/burg
</code>
</button>
<button height="15">
<title>
b11=$(head -26 /usr/share/sbm/$language | tail -1)
echo $b11
</title>
<code>
sed -i /GRUB_DISABLE_LINUX_UUID/d /etc/default/burg
</code>
</button>
</hlayout>
<hlayout>
<label>echo "GRUB_FOLD"</label>
<button height="15">
<title>
b10=$(head -25 /usr/share/sbm/$language | tail -1)
echo $b10
</title>
<code>
grubfoldt='GRUB_FOLD="true'"' 
echo $grubfoldt >> /etc/default/burg
</code>
</button>
<button height="15">
<title>
b11=$(head -26 /usr/share/sbm/$language | tail -1)
echo $b11
</title>
<code>
sed -i /GRUB_FOLD/d /etc/default/burg
</code>
</button>
<button height="15">
<title>
b13=$(head -28 /usr/share/sbm/$language | tail -1)
echo $b13
</title>
<code>
grufolds='GRUB_FOLD="'saved'"' 
echo $grubfolds >> /etc/default/burg
</code>
</button>

</hlayout>
<label>
pu=$(head -29 /usr/share/sbm/$language | tail -1)
echo $pu 
</label>
<hlayout>
<text var="utente">
nuser=$(head -54 /usr/share/sbm/$language | tail -1)
echo $nuser
</text>
<button height="15">
<title>
b14=$(head -30 /usr/share/sbm/$language | tail -1)
echo $b14
</title>
<code>
xterm -e "sudo burg-adduser $utente"
</code>
</button>
<button height="15">
<title>
b15=$(head -31 /usr/share/sbm/$language | tail -1)
echo $b15
</title>
<code>
xterm -e "sudo burg-deluser $utente"
</code>
</button>
</hlayout>
<label>
pu=$(head -29 /usr/share/sbm/$language | tail -1)
echo $pu 
</label>
<hlayout>
<text var="admin">
nadmin=$(head -53 /usr/share/sbm/$language | tail -1)
echo $nadmin
</text>
<button height="15">
<title>
b14=$(head -30 /usr/share/sbm/$language | tail -1)
echo $b14
</title>
<code>
xterm -e "sudo burg-adduser --super $admin"
</code>
</button>
<button height="15">
<title>
b15=$(head -31 /usr/share/sbm/$language | tail -1)
echo $b15
</title>
<code>
xterm -e "sudo burg-deluser $admin"
</code>
</button>
</hlayout>
</config>
