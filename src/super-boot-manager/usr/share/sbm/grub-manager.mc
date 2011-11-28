<config>
	  <global>
	  cd /usr/share/sbm/
	  bash cleaner
	  bash listaos_grub >> ~/.sbm/os_grub
	  sed -i '/./!d' ~/.sbm/os_grub
	  </global>
	  <global var="language">
	  language=$(cat ~/.sbm/language)
	  echo $language
	  </global>
	  <img src="/usr/share/sbm/images/octo_3.png" align="center" /> 
	  <tab>
		<title>
		tabtitle1=$(head -1 /usr/share/sbm/$language | tail -1)
		echo $tabtitle1
		</title>
		<label>
		labelinst=$(head -71 /usr/share/sbm/$language | tail -1)
		echo $labelinst</label>
		<label>labelinst2=$(head -85 /usr/share/sbm/$language | tail -1)
		echo $labelinst2</label>
		<combobox var="disk" height="35">
		mount | grep ^/dev | cut -d' ' -f1 | sed "s/[0-9]//g" | uniq > ~/.sbm/dischi
		cat ~/.sbm/dischi
		</combobox>
		<button height="35">
			  <title>labelinst3=$(head -86 /usr/share/sbm/$language | tail -1)
			  echo $labelinst3
			  </title>
			  <code>
			  xterm -e "sudo grub-install $disk && sudo update-grub"
			  zenity --info --title=Success --text='Finished'
			  </code>
		</button>
		<hlayout>
			  <button height="35">
				    <title>grubemu=$(head -154 /usr/share/sbm/$language | tail -1)
				    echo $grubemu
				    </title>
				    <code>
				    xterm -e "sudo grub-emu && sudo sleep 2 & sudo buc close_grub-emu.mc"
				    </code>
			  </button>
		</hlayout>
	  </tab>

	  <tab>
		<title>
		tabtitle1=$(head -2 /usr/share/sbm/$language | tail -1)
		echo $tabtitle1
		</title>
		<tab>
		      <title>
		      tabtitle1=$(head -97 /usr/share/sbm/$language | tail -1)
		      echo $tabtitle1
		      </title>
		      <label>
		      p3=$(head -8 /usr/share/sbm/$language | tail -1)
		      echo $p3
		      </label>
		      <combobox var="operativesystem">
		      cat ~/.sbm/os_grub
		      </combobox>
		      <button>
		      <title>
		      b3=$(head -9 /usr/share/sbm/$language | tail -1)
		      echo $b3
		      </title>
		      <code>
		      sudo rm -rf ~/.sbm/defaultos 
		      echo $operativesystem >  ~/.sbm/defaultos 
		      bash /usr/share/sbm/sceltaos_grub
		      </code>
		      </button>
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
		</tab>

		<tab> 
			<title>
			tabtitle1=$(head -98 /usr/share/sbm/$language | tail -1)
			echo $tabtitle1
			</title>
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
		</tab>

		<tab> 
		      <title>
		      tabtitle1=$(head -99 /usr/share/sbm/$language | tail -1)
		      echo $tabtitle1
		      </title>
		      <hlayout>
				<label>
				p9=$(head -23 /usr/share/sbm/$language | tail -1)
				echo $p9 
				</label>
				<label>echo " "</label>
				<button height="15">
					  <title>
					  b9=$(head -79 /usr/share/sbm/$language | tail -1)
					  echo $b9
					  </title>
					  <code>
					  gedit /etc/default/grub || kate /etc/default/grub || leafpad /etc/default/grub
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
					  sed -i /GRUB_DISABLE_LINUX_RECOVERY/d /etc/default/grub 
					  grubrecovery='GRUB_DISABLE_LINUX_RECOVERY="'true'"' 
					  echo $grubrecovery >> /etc/default/grub
					  </code>
				</button>
				<button height="15">
					  <title>
					  b11=$(head -26 /usr/share/sbm/$language | tail -1)
					  echo $b11
					  </title>
					  <code>
					  sed -i /GRUB_DISABLE_LINUX_RECOVERY/d /etc/default/grub
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
					  //echo $grubsd >> /etc/default/grub
					  xterm -e "sudo sed -i 's/GRUB_SAVEDEFAULT=[a-z]*/GRUB_SAVEDEFAULT=true/g;s/^#GRUB_SAVE/GRUB_SAVE/g' /etc/default/grub"
					  </code>
				</button>
				<button height="15">
					  <title>
					  b11=$(head -26 /usr/share/sbm/$language | tail -1)
					  echo $b11
					  </title>
					  <code>
					  //sed -i /GRUB_SAVEDEFAULT/d /etc/default/grub
					  xterm -e "sudo sed -i 's/GRUB_SAVEDEFAULT=[a-z]*/GRUB_SAVEDEFAULT=false/g;s/^#GRUB_SAVE/GRUB_SAVE/g' /etc/default/grub"
					  </code>
				</button>
		      </hlayout>
		      <label>echo "GRUB_CMDLINE_LINUX_DEFAULT"</label>
		      <hlayout>
				  <text var="cmdlined">ln=$(cd /usr/share/sbm && ./grub_cmdlined) && echo "$ln"</text>
				  <button height="15">
					    <title>
					    b12=$(head -27 /usr/share/sbm/$language | tail -1)
					    echo $b12
					    </title>
					    <code>
					    sed -i /GRUB_CMDLINE_LINUX_DEFAULT/d /etc/default/grub 
					    gdefault='GRUB_CMDLINE_LINUX_DEFAULT="'$cmdlined'"'  
					    echo $gdefault >> /etc/default/grub
					    </code>
				  </button>
		      </hlayout>
		      <label>echo "GRUB_CMDLINE_LINUX"</label>
		      <hlayout>
				  <text var="cmdline">ln=$(cd /usr/share/sbm && ./grub_cmdline) && echo "$ln"</text>
				  <button height="15">
					      <title>
					      b12=$(head -27 /usr/share/sbm/$language | tail -1)
					      echo $b12
					      </title>
					      <code>
					      sed -i /GRUB_CMDLINE_LINUX/d /etc/default/grub 
					      gdefault='GRUB_CMDLINE_LINUX="'$cmdline'"'  
					      echo $gdefault >> /etc/default/grub
					      </code>
				  </button>
		      </hlayout>
		</tab>

		<tab> 
			<title>
			tabtitle1=$(head -100 /usr/share/sbm/$language | tail -1)
			echo $tabtitle1
			</title>
			<hlayout>
				  <label>echo "GRUB_LINUX16"</label>
				  <button height="15">
					    <title>
					    b10=$(head -25 /usr/share/sbm/$language | tail -1)
					    echo $b10
					    </title>
					    <code>
					    grublinux='GRUB_LINUX16="'true'"' 
					    echo $grublinux >> /etc/default/grub
					    </code>
				  </button>
				  <button height="15">
					    <title>
					    b11=$(head -26 /usr/share/sbm/$language | tail -1)
					    echo $b11
					    </title>
					    <code>
					    sed -i /GRUB_LINUX16/d /etc/default/grub
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
					    echo $grubuuid >> /etc/default/grub
					    </code>
				  </button>
				  <button height="15">
					    <title>
					    b11=$(head -26 /usr/share/sbm/$language | tail -1)
					    echo $b11
					    </title>
					    <code>
					    sed -i /GRUB_DISABLE_LINUX_UUID/d /etc/default/grub
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
					    echo $grubfoldt >> /etc/default/grub
					    </code>
				  </button>
				  <button height="15">
					    <title>
					    b11=$(head -26 /usr/share/sbm/$language | tail -1)
					    echo $b11
					    </title>
					    <code>
					    sed -i /GRUB_FOLD/d /etc/default/grub
					    </code>
				  </button>
				  <button height="15">
					    <title>
					    b13=$(head -28 /usr/share/sbm/$language | tail -1)
					    echo $b13
					    </title>
					    <code>
					    grufolds='GRUB_FOLD="'saved'"' 
					    echo $grubfolds >> /etc/default/grub
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
					    xterm -e "sudo grub-adduser --super $admin"
					    </code>
				  </button>
				  <button height="15">
					    <title>
					    b15=$(head -31 /usr/share/sbm/$language | tail -1)
					    echo $b15
					    </title>
					    <code>
					    xterm -e "sudo grub-deluser $admin"
					    </code>
				  </button>
			</hlayout>
		</tab>
	  </tab>

	  <tab> 
		<title>
		tabtitle1=$(head -101 /usr/share/sbm/$language | tail -1)
		echo $tabtitle1
		</title>
		<label>
		bsf=$(head -87 /usr/share/sbm/$language | tail -1)
		echo $bsf
		</label>
		<label>
		img=$(head -88 /usr/share/sbm/$language | tail -1)
		echo $img
		</label>
		<hlayout>
			  <file var="image_grub" mode="open" filter="Immagini(*.tga *.jpeg *.jpg *.png)">
			  </file>
			  <text var="size">echo "1600x900"</text>
			  <button>
				  <title>
				  conv=$(head -89 /usr/share/sbm/$language | tail -1)
				  echo $conv
				  </title>
				  <code>
				  echo $image_grub > ~/.sbm/gbackground
				  echo $size > ~/.sbm/size
				  xterm -e "bash /usr/share/sbm/set_image"
				  </code>
			  </button>
		</hlayout>
		<label>color=$(head -90 /usr/share/sbm/$language | tail -1)
		echo $color</label>
		<hlayout>
			  <vlayout>
				    <label>color1=$(head -91 /usr/share/sbm/$language | tail -1)
				    echo $color1</label>
				    <combobox var="normal_text_color">
				    echo "black"
				    echo "blue"
				    echo "light-blue"
				    echo "brown"
				    echo "cyan"
				    echo "light-cyan"
				    echo "dark-gray"
				    echo "light-gray"
				    echo "green"
				    echo "light-green"
				    echo "red"
				    echo "light-red"
				    echo "magenta"
				    echo "light-magenta"
				    echo "yellow"
				    echo "white" 
				    </combobox>
				    <label>color2=$(head -92 /usr/share/sbm/$language | tail -1)
				    echo $color2</label>
				    <combobox var="back_normal_text_color">
				    echo "black"
				    echo "blue"
				    echo "light-blue"
				    echo "brown"
				    echo "cyan"
				    echo "light-cyan"
				    echo "dark-gray"
				    echo "light-gray"
				    echo "green"
				    echo "light-green"
				    echo "red"
				    echo "light-red"
				    echo "magenta"
				    echo "light-magenta"
				    echo "yellow"
				    echo "white" 
				    </combobox>
			  </vlayout>
			  <vlayout>
				    <label>color3=$(head -93 /usr/share/sbm/$language | tail -1)
				    echo $color3</label>
				    <combobox var="highlight_text_color">
				    echo "black"
				    echo "blue"
				    echo "light-blue"
				    echo "brown"
				    echo "cyan"
				    echo "light-cyan"
				    echo "dark-gray"
				    echo "light-gray"
				    echo "green"
				    echo "light-green"
				    echo "red"
				    echo "light-red"
				    echo "magenta"
				    echo "light-magenta"
				    echo "yellow"
				    echo "white" 
				    </combobox>
				    <label>color4=$(head -94 /usr/share/sbm/$language | tail -1)
				    echo $color4</label>
				    <combobox var="back_highlight_text_color">
				    echo "black"
				    echo "blue"
				    echo "light-blue"
				    echo "brown"
				    echo "cyan"
				    echo "light-cyan"
				    echo "dark-gray"
				    echo "light-gray"
				    echo "green"
				    echo "light-green"
				    echo "red"
				    echo "light-red"
				    echo "magenta"
				    echo "light-magenta"
				    echo "yellow"
				    echo "white" 
				    </combobox>
			  </vlayout>
		</hlayout>
		<hlayout>
			  <label>echo " "</label>
                          <button>
				    <title>color4=$(head -95 /usr/share/sbm/$language | tail -1)
				    echo $color4
				    </title>
				    <code>
				    xterm -e "sudo sed -i 's/COLOR_NORMAL=\"[a-z]*\/[a-z]*"/COLOR_NORMAL=\"'$normal_text_color'\/'$back_normal_text_color'\"/g' /etc/grub.d/05_debian_theme && sed -i 's/COLOR_NORMAL=\"[a-z]*\/[a-z]*"/COLOR_HIGHLIGHT=\"'$highlight_text_color'\/'$back_highlight_text_color'\"/g' /etc/grub.d/05_debian_theme"
				    </code>
			  </button><label>echo " "</label>
		</hlayout>
	  </tab>

	  <tab>
		<title>
		tabtitle1=$(head -43 /usr/share/sbm/$language | tail -1)
		echo $tabtitle1
		</title>
		<hlayout>
			  <label>
			  bi=$(head -44 /usr/share/sbm/$language | tail -1)
			  echo $bi 
			  </label>
			  <file var="isourl" mode="open" filter="Iso(*.iso)">
			  </file>
		</hlayout>
		<label>
		bu=$(head -46 /usr/share/sbm/$language | tail -1)
		echo $bu 
		</label>
		<hlayout>
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
			  <button>
				    <title>
				    ai=$(head -30 /usr/share/sbm/$language | tail -1)
				    echo $ai
				    </title>
				    <code>
				    rm -rf ~/.sbm/tipoiso ~/.sbm/iso
				    echo $tipoiso > ~/.sbm/tipoiso
				    echo $isourl > ~/.sbm/iso
				    cd /usr/share/sbm/
				    sudo bash addmenuentry_grub
				    </code>
			  </button>
		</hlayout>
		<label>
		pp3=$(head -59 /usr/share/sbm/$language | tail -1)
		echo $pp3
		</label>
		<hlayout>
			  <combobox var="isotoremove">
			  cat ~/.sbm/listaiso_grub
			  </combobox>
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
		</hlayout>
	  </tab>
	  <hlayout>
	  <label>echo " "</label>
	  <button align="left" height="45">
		    <title>
		    b6=$(head -15 /usr/share/sbm/$language | tail -1)
		    echo $b6
		    </title>
		    <code>
		    xterm -e "sudo update-grub"
		    </code>
	  </button>
	  <label>echo " "</label>
	  </hlayout>
</config>
