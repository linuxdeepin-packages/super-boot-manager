<config>
<global>
bash listaos >> ~/.sbm/os
bash listaiso >> ~/.sbm/listaiso
sed -i '/./!d' ~/.sbm/listaiso
sed -i '/./!d' ~/.sbm/os
</global>
<global var="language">
language=$(cat ~/.sbm/language)
echo $language
</global>
<img src="/usr/share/sbm/images/octo_2.png" align="center" /> 

<tab>
<title>
tabtitle1=$(head -1 /usr/share/sbm/$language | tail -1)
echo $tabtitle1
</title>
<hlayout>
<label>echo " "</label>
<label>
t1=$(head -3 /usr/share/sbm/$language | tail -1)
echo $t1
</label>
<label>echo " "</label>
</hlayout>
<img src="/usr/share/sbm/images/install.png" align="center" />
<hlayout>
<label>echo " "</label>
<label>
p1=$(head -4 /usr/share/sbm/$language | tail -1)
echo $p1
</label>
<label>echo " "</label>
</hlayout>
<hlayout>
<label>echo " "</label>
<combobox var="disk" height="35">
mount | grep ^/dev | cut -d' ' -f1 | sed "s/[0-9]//g" | uniq > ~/.sbm/lol
cat ~/.sbm/lol
</combobox>
<button height="35">
<title>
b1=$(head -6 /usr/share/sbm/$language | tail -1)
echo $b1
</title>
<code>
sudo rm -rf ~/.sbm/disk 
echo $isotoremove >  ~/.sbm/disk 
bash /usr/share/sbm/installer
</code>
</button>
<label>echo " "</label>
<button height="35">
<title>
ex=$(head -62 /usr/share/sbm/$language | tail -1)
echo $ex
</title>
<code>
sudo burg-install $disk && sudo update-burg && buc success.mc
</code>
</button>
<button height="35">
<title>
help=$(head -69 /usr/share/sbm/$language | tail -1)
echo $help
</title>
<code>
buc help1.mc
</code>
</button>
</hlayout>
<hlayout>
<label>
p2=$(head -5 /usr/share/sbm/$language | tail -1)
echo $p2
</label>
<button height="35">
<title>
b2=$(head -7 /usr/share/sbm/$language | tail -1)
echo $b2
</title>
<code>
xterm -e "sudo burg-emu"
</code>
</button>
<button height="35">
<title>
b2=$(head -71 /usr/share/sbm/$language | tail -1)
echo $b2
</title>
<code>
buc useful_button.mc
</code>
</button>
</hlayout>

<hlayout>
<label>
tr=$(head -41 /usr/share/sbm/$language | tail -1)
echo $tr
</label>
<button height="35">
<title>
br=$(head -48 /usr/share/sbm/$language | tail -1)
echo $br
</title>
<code>
sudo rm -rf /root/.sbm && rm -rf ~/.sbm && killall buc && sbm
</code>
</button>
</hlayout>
</tab>


<tab>
<title>
tabtitle2=$(head -2 /usr/share/sbm/$language | tail -1)
echo $tabtitle2
</title>
<label>
p3=$(head -8 /usr/share/sbm/$language | tail -1)
echo $p3
</label>
<hlayout>
<combobox var="operativesystem">
cat ~/.sbm/os
</combobox>
<button>
<title>
b3=$(head -9 /usr/share/sbm/$language | tail -1)
echo $b3
</title>
<code>
sudo rm -rf ~/.sbm/defaultos 
echo $operativesystem >  ~/.sbm/defaultos 
bash /usr/share/sbm/sceltaos
</code>
</button>
</hlayout>



<label align="center" > 
echo "_________________________________________________________________________"
</label> 
<hlayout>
<vlayout>
<label>
p4=$(head -10 /usr/share/sbm/$language | tail -1)
echo $p4
</label>
<combobox var="risoluzione">
rm -rf ~/.sbm/risoluzioni1
xrandr > ~/.sbm/risoluzioni1
sed -i '/DFP/d' ~/.sbm/risoluzioni1
sed -i '/Screen/d' ~/.sbm/risoluzioni1
sed -i '/CRT/d' ~/.sbm/risoluzioni1
awk '{print $1}' ~/.sbm/risoluzioni1 > ~/.sbm/risoluzioni
cat ~/.sbm/risoluzioni
</combobox>
<button height="35">
<title>
b4=$(head -11 /usr/share/sbm/$language | tail -1)
echo $b4
</title>
<code>
xterm -e "sudo sed -i '/GRUB_GFXMODE/d' /etc/default/burg ; echo "GRUB_GFXMODE="$risoluzione | sudo tee -a /etc/default/burg"
</code>
</button>
</vlayout>
<label> 
echo "|"
echo "|"
echo "|"
echo "|"
echo "|"
echo "|"
echo "|"
echo "|"
</label>
<vlayout>
<label var="attuale">
p5=$(head -12 /usr/share/sbm/$language | tail -1)
p6=$(head -13 /usr/share/sbm/$language | tail -1)
tn=$(grep GRUB_TIMEOUT /etc/default/burg | tr -cd [:digit:])
echo "$p5 $tn $p6"
</label>
<text var="timeout">echo "10"</text>
<button height="35">
<title>
b5=$(head -14 /usr/share/sbm/$language | tail -1)
echo $b5
</title>
<code>
xterm -e "sudo sed -i 's/GRUB_TIMEOUT=[0-9]*/GRUB_TIMEOUT=$timeout/g' /etc/default/burg"
</code>
</button>

</vlayout>
</hlayout>


<hlayout>
<label>
tk=$(head -39 /usr/share/sbm/$language | tail -1)
echo $tk
</label>
<button>
<title>
bk=$(head -40 /usr/share/sbm/$language | tail -1)
echo $bk
</title>
<code>
xterm -e "sudo dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | xargs sudo apt-get -y purge"
</code>
</button>
</hlayout>
<hlayout>
<label>
padv=$(head -22 /usr/share/sbm/$language | tail -1)
echo $padv
</label>
<button>
<title>
open=$(head -72 /usr/share/sbm/$language | tail -1)
echo $open
</title>
<code>
buc /usr/share/sbm/adv-par.mc
</code>
</button>
</hlayout>

<hlayout>
<label>echo " "</label><label>echo " "</label><label>echo " "</label><label>echo " "</label><label>echo " "</label>
<img src="/usr/share/sbm/images/apply.png" align="left" /> 
<button align="left" height="45">
<title>
b6=$(head -15 /usr/share/sbm/$language | tail -1)
echo $b6
</title>
<code>
xterm -e "sudo update-burg"
</code>
</button>
<label>echo " "</label><label>echo " "</label><label>echo " "</label><label>echo " "</label><label>echo " "</label>
</hlayout>
</tab>


<tab>
<title>
tabtitle3=$(head -16 /usr/share/sbm/$language | tail -1)
echo $tabtitle3
</title>
<label>
pt=$(head -38 /usr/share/sbm/$language | tail -1)
echo $pt
</label>
   <iconlist var="selezione" iconwidth="190" iconheight="90" mode="none">
<icon text="  A u t u m n" href="/usr/share/sbm/images/preview/autumn.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=5 && tar xzf click.php?id=5 && sudo rm -rf click.php?id=5 && sudo mv autumn /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="M a g i c" href="/usr/share/sbm/images/preview/magic.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=31 && tar xzf click.php?id=31 && sudo rm -rf click.php?id=31 && sudo mv magic /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="  P i c c h i o" href="/usr/share/sbm/images/preview/picchio.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=17 && tar xzf click.php?id=17 && sudo rm -rf click.php?id=17 && sudo mv picchio /boot/burg/themes/ && sudo update-burg" 
</ondoubleclick>
</icon>
<icon text="  G o l d e n s e a" href="/usr/share/sbm/images/preview/goldensea.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=22 && tar xzf click.php?id=22 && sudo rm -rf click.php?id=22 && sudo mv goldensea /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="  S e x y b u n t u" href="/usr/share/sbm/images/preview/sexybuntu.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=32 && tar xzf click.php?id=32 && sudo rm -rf click.php?id=32 && sudo mv sexybuntu /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="  T u x - b u r g e r" href="/usr/share/sbm/images/preview/tux-burger.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=33 && tar xzf click.php?id=33 && sudo rm -rf click.php?id=33 && sudo mv tux-burger /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="  A b s t r a c t" href="/usr/share/sbm/images/preview/abstract.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=4 && tar xzf click.php?id=4 && sudo rm -rf click.php?id=4 && sudo mv abstract /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon  text="  H o m e r" href="/usr/share/sbm/images/preview/homer.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=10 && tar xzf click.php?id=10 && sudo rm -rf click.php?id=10 && sudo mv homer /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon> 
<icon  text="  D a r k  S h i n e" href="/usr/share/sbm/images/preview/darkshine.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=8 && tar xzf click.php?id=8 && sudo rm -rf click.php?id=8 && sudo mv dark_shine /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>  
<icon  text="  R a d i a n c e" href="/usr/share/sbm/images/preview/radiance.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=18 && tar xzf click.php?id=18 && sudo rm -rf click.php?id=18 && sudo mv radiance /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon  text="  K u b u n t u" href="/usr/share/sbm/images/preview/orange.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=11 && tar xzf click.php?id=11 && sudo rm -rf click.php?id=11 && sudo mv kubuntu /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon  text="  K u b u n t u B r a n d" href="/usr/share/sbm/images/preview/kubuntu_brand.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=12 && tar xzf click.php?id=12 && sudo rm -rf click.php?id=12 && sudo mv kubuntu_brand /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon> 
<icon text="  U b u n t u B r a n d" href="/usr/share/sbm/images/preview/ubuntu_brand.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=19 && tar xzf click.php?id=19 && sudo rm -rf click.php?id=19 && sudo mv ubuntu_brand /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="  G n o m e" href="/usr/share/sbm/images/preview/gnome1.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=9 && tar xzf click.php?id=9 && sudo rm -rf click.php?id=9 && sudo mv Gnome /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="  U b u n t u W a l l" href="/usr/share/sbm/images/preview/ubuntu_wall.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=20 && tar xzf click.php?id=20 && sudo rm -rf click.php?id=20 && sudo mv ubuntu_wall /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="  K u b u n t u W a l l " href="/usr/share/sbm/images/preview/kubuntu_wall.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=13 && tar xzf click.php?id=13 && sudo rm -rf click.php?id=13 && sudo mv kubuntu_wall /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="  V i t r u v i o" href="/usr/share/sbm/images/preview/vitruvio.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=21 && tar xzf click.php?id=21 && sudo rm -rf click.php?id=21z && sudo mv vitruvio /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="M i n i m a l" href="/usr/share/sbm/images/preview/minimal.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=3 && tar xzf click.php?id=3 && sudo rm -rf click.php?id=3 && sudo mv minimal /boot/burg/themes/ && sudo mv minimaltext /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="M i n t" href="/usr/share/sbm/images/preview/mint.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=23 && tar xzf click.php?id=23 && sudo rm -rf click.php?id=23 && sudo mv mint /boot/burg/themes/ && sudo mv mint_text_below /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="W a s p" href="/usr/share/sbm/images/preview/wasp.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=7 && tar xzf click.php?id=7 && sudo rm -rf click.php?id=7 && sudo mv wasp /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="S u n s e t" href="/usr/share/sbm/images/preview/sunset.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=6 && tar xzf click.php?id=6 && sudo rm -rf click.php?id=6 && sudo mv sunset /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="H o r t e n s i a" href="/usr/share/sbm/images/preview/hortensia.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=24 && tar xzf click.php?id=24 && sudo rm -rf click.php?id=24 && sudo mv hortensia /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="F o r t u n e" href="/usr/share/sbm/images/preview/fortune.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=28 && tar xzf click.php?id=28 && sudo rm -rf click.php?id=28 && sudo mv fortune /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="K u b u n t u - E O S" href="/usr/share/sbm/images/preview/kubuntu_EOS.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=27 && tar xzf click.php?id=27 && sudo rm -rf click.php?id=27 && sudo mv kubuntu_EOS /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="M i n i m a l  b y  S i r" href="/usr/share/sbm/images/preview/minimal_by_sir.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=29 && tar xzf click.php?id=29 && sudo rm -rf click.php?id=29 && sudo mv minimal_by_sir /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="G o g o - n o g e - h o t - l e g s" href="/usr/share/sbm/images/preview/gogo-noge-hot-legs.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=30 && tar xzf click.php?id=30 && sudo rm -rf click.php?id=30 && sudo mv gogo-noge-hot-legs /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
</iconlist>
</tab>


<tab>
<title>
tabtitle4=$(head -17 /usr/share/sbm/$language | tail -1)
echo $tabtitle4
</title>
<hlayout>
<label>echo " "</label><label>echo " "</label>
<label>
p7=$(head -18 /usr/share/sbm/$language | tail -1)
echo $p7
</label>
<label>echo " "</label><label>echo " "</label>
</hlayout>
<hlayout>
<label>echo " "</label><label>echo " "</label><label>echo " "</label><label>echo " "</label>
<img src="/usr/share/sbm/images/remove.png" />
<label>echo " "</label><label>echo " "</label><label>echo " "</label><label>echo " "</label>
</hlayout>
<hlayout>
<label>echo " "</label>
<button height="45">
<title>
b7=$(head -19 /usr/share/sbm/$language | tail -1)
echo $b7
</title>
<code>
xterm -e "sudo apt-get remove --purge burg burg-themes burg-emu"
</code>
</button>
<label>echo " "</label>
</hlayout>
<hlayout>
<label>echo " "</label><label>echo " "</label>
<img src="/usr/share/sbm/images/restore.png" /> 
<label>echo " "</label><label>echo " "</label>
</hlayout>
<hlayout>
<label>echo " "</label>
<label>
p8=$(head -20 /usr/share/sbm/$language | tail -1)
echo $p8 
</label>
<combobox var="disk1" height="45">
mount | grep ^/dev | cut -d' ' -f1 | sed "s/[0-9]//g" | uniq > ~/.sbm/lol
cat ~/.sbm/lol
</combobox>
<button height="45">
<title>
b8=$(head -21 /usr/share/sbm/$language | tail -1)
echo $b8
</title>
<code>
xterm -e "sudo grub-install $disk1 && sudo update-grub"
buc success.mc
</code>
</button>
<label>echo " "</label>
</hlayout>
</tab>

<tab>
<title>
tabtitle1=$(head -43 /usr/share/sbm/$language | tail -1)
echo $tabtitle1
</title>
<img src="/usr/share/sbm/images/ISO.png" align="center" />
<label>
bi=$(head -44 /usr/share/sbm/$language | tail -1)
echo $bi 
</label>
<file var="isourl" mode="open" filter="Iso(*.iso)">
</file>

<label>
bu=$(head -46 /usr/share/sbm/$language | tail -1)
echo $bu 
</label>
<combobox var="tipoiso">
echo "Aptosid 2010-02 kde amd64"
echo "Aptosid 2010-02 kde x86"
echo "Clonezilla live 20100921"
echo "Kubuntu Maverick 10.10"
echo "Kubuntu Lucid 10.04"
echo "Lineduc 2.0"
echo "Linux Mint 10 Julia"
echo "Linux Mint 9 Isadora"
echo "Linux Mint 8 Helena"
echo "Linux Mint 7 Gloria"
echo "Memory test 4.10 (memtest86+)"
echo "Memory test 4.10 (memtest86+, serial console 115200)"
echo "Netboot.ME"
echo "PartedMagic 5.6"
echo "PING 3.0.0"
echo "Redobackup 0.9.7"
echo "SystemRescueCd 1.6.2"
echo "Ubuntu Maverick 10.10"
echo "Ubuntu Lucid 10.04"
</combobox>
<hlayout>
<label>echo " "</label>
<button height="35">
<title>
ai=$(head -45 /usr/share/sbm/$language | tail -1)
echo $ai
</title>
<code>
rm -rf ~/.sbm/tipoiso ~/.sbm/iso
echo $tipoiso > ~/.sbm/tipoiso
echo $isourl > ~/.sbm/iso
cd /usr/share/sbm/
sudo bash addmenuentry
</code>
</button>
<label>echo " "</label>
</hlayout>
<label>
<hlayout>
echo "__________________________________________________________________________________" 
</hlayout>
</label>
<label>
pp3=$(head -59 /usr/share/sbm/$language | tail -1)
echo $pp3
</label>
<combobox var="isotoremove">
cat ~/.sbm/listaiso
</combobox>
<hlayout>
<label>echo " "</label>
<button height="35">
<title>
bb3=$(head -60 /usr/share/sbm/$language | tail -1)
echo $bb3
</title>
<code>
sudo rm -rf ~/.sbm/isotoremove 
echo $isotoremove >  ~/.sbm/isotoremove 
bash /usr/share/sbm/isoremover
</code>
</button>
<label>echo " "</label>
</hlayout>
</tab>



</config>

