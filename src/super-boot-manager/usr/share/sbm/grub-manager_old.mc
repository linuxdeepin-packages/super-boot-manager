<config>
<global>
bash listaos >> ~/.sbm/os
sed -i '/./!d' ~/.sbm/os
</global>
<global var="language">
language=$(cat ~/.sbm/language)
echo $language
</global>
<img src="/usr/share/sbm/images/octo_3.png" align="center" /> 


<tab>
<title>
tabtitle1=$(head -92 /usr/share/sbm/$language | tail -1)
echo $tabtitle1
</title>
<hlayout>
<label>echo " "</label>
<label>
instg=$(head -91 /usr/share/sbm/$language | tail -1)
echo $instg
</label>
<label>echo " "</label>
</hlayout>
<img src="/usr/share/sbm/images/install.png" align="center" />
<hlayout>
<label>echo " "</label>
<label>
echo Indica dove installare grub
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
echo installa grub
</title>
<code>
xterm -e "sudo grub-install /dev/$disk1 && sudo update-grub"
zenity --info --title=Success --text='Finished'
</code>
</button>
<label>echo " "</label>
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
echo "__________________________________________________________________________________"
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
xterm -e "sudo sed -i '/GRUB_GFXMODE/d' /etc/default/grub ; echo "GRUB_GFXMODE="$risoluzione | sudo tee -a /etc/default/grub"
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
tn=$(grep GRUB_TIMEOUT /etc/default/grub | tr -cd [:digit:])
echo "$p5 $tn $p6"
</label>
<text var="timeout">echo "10"</text>
<button height="35">
<title>
b5=$(head -14 /usr/share/sbm/$language | tail -1)
echo $b5
</title>
<code>
xterm -e "sudo sed -i 's/GRUB_TIMEOUT=[0-9]*/GRUB_TIMEOUT=$timeout/g' /etc/default/grub"
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
buc /usr/share/sbm/adv-parg.mc
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
xterm -e "sudo update-grub"
</code>
</button>
<label>echo " "</label><label>echo " "</label><label>echo " "</label><label>echo " "</label><label>echo " "</label>
</hlayout>
</tab>




<tab>
<title>
echo Imposta sfondo
</title>
<label>
echo Scegli e imposta lo sfondo del grub
</label>
<label>
echo 
</label>
<label>
echo 
</label>
<label>
echo 
</label>
<label>
echo Seleziona una immagine
</label>
<file var="isourl" mode="open" filter="Immagini(*.jpg)">
</file>
<button>
<title>
echo converti
</title>
<code>
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
</code>
</button>
<button>
<title>
echo applica
</title>
<code>
xterm -e "sudo update-grub"
</code>
</button>
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
