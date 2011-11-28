<config>
    <global>
    bash cleaner
    cd /usr/share/sbm/
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
	  tabtitle1=$(head -96 /usr/share/sbm/$language | tail -1)
	  echo $tabtitle1
	  </title>
	  <label>
	  p1=$(head -4 /usr/share/sbm/$language | tail -1)
	  echo $p1
	  </label>
		  <hlayout>
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
					      echo $disk > ~/.sbm/disk 
					      xterm -e "bash /usr/share/sbm/installer"
					      </code>
			  </button>
			  <button height="35">
					      <title>
					      ex=$(head -62 /usr/share/sbm/$language | tail -1)
					      echo $ex
					      </title>
					      <code>
					      sudo burg-install $disk && sudo update-burg && buc success.mc
					      </code>
			  </button>
		  </hlayout>
	  <button height="35">
			      <title>
			      help=$(head -69 /usr/share/sbm/$language | tail -1)
			      echo $help
			      </title>
			      <code>
			      buc help1.mc
			      </code>
	  </button>
	  <hlayout>
		    <label>
		    p2=$(head -5 /usr/share/sbm/$language | tail -1)
		    echo $p2
		    </label>
	  <button height="40">
			      <title>
			      b2=$(head -156 /usr/share/sbm/$language | tail -1)
			      echo $b2
			      </title>
			      <code>
			      buc useful_button.mc
			      </code>
	  </button>
	  <button height="40">
			      <title>
			      b2=$(head -7 /usr/share/sbm/$language | tail -1)
			      echo $b2
			      </title>
			      <code>
			      xterm -e "sudo burg-emu"
			      </code>
	  </button>
	  </hlayout>
	  <hlayout>
		    <label>
		    tr=$(head -41 /usr/share/sbm/$language | tail -1)
		    echo $tr
		    </label>
	  <button>
		    <title>
		    br=$(head -42 /usr/share/sbm/$language | tail -1)
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
		  <tab>
			<title>
			tabtitle1=$(head -97 /usr/share/sbm/$language | tail -1)
			echo $tabtitle1
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
			<hlayout>
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
			</hlayout>
		  </tab>

		  <tab>
			  <title>
			  tabtitle1=$(head -98 /usr/share/sbm/$language | tail -1)
			  echo $tabtitle1
			  </title>
			  <hlayout>
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
		  </tab>

		  <tab>
			  <title>
			  tabtitle1=$(head -99 /usr/share/sbm/$language | tail -1)
			  echo $tabtitle1
			  </title>
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
		  </tab>
    

<tab>
    <title>
    tabtitle1=$(head -100 /usr/share/sbm/$language | tail -1)
    echo $tabtitle1
    </title>
    <label>echo "GRUB_CMDLINE_LINUX_DEFAULT"</label>
    <hlayout>
	    <text var="cmdlined">ln=$(cd /usr/share/sbm && ./grub_cmdlined_b) && echo "$ln"</text>
	    <button height="15">
				<title>
				b12=$(head -27 /usr/share/sbm/$language | tail -1)
				echo $b12
				</title>
				<code>
				sed -i /GRUB_CMDLINE_LINUX_DEFAULT/d /etc/default/burg 
				gdefault='GRUB_CMDLINE_LINUX_DEFAULT="'$cmdlined'"'  
				echo $gdefault >> /etc/default/burg
				</code>
	    </button>
    </hlayout>
    <label>echo "GRUB_CMDLINE_LINUX"</label>
    <hlayout>
	    <text var="cmdline">ln=$(cd /usr/share/sbm && ./grub_cmdline_b) && echo "$ln"</text>
	    <button height="15">
				<title>
				b12=$(head -27 /usr/share/sbm/$language | tail -1)
				echo $b12
				</title>
				<code>
				sed -i /GRUB_CMDLINE_LINUX/d /etc/default/burg 
				gdefault='GRUB_CMDLINE_LINUX="'$cmdline'"'  
				echo $gdefault >> /etc/default/burg
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
    </tab>
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
      <iconlist var="selezione" iconwidth="400" iconheight="200" mode="list">
		<icon text="Autumn" href="/usr/share/sbm/images/preview/autumn.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install burg-theme-autumn"
				  </ondoubleclick>
		</icon>
		<icon text="Magic" href="/usr/share/sbm/images/preview/magic.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install burg-theme-magic"
				  </ondoubleclick>
		</icon>
		<icon text="Picchio" href="/usr/share/sbm/images/preview/picchio.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install burg-theme-picchio"
				  </ondoubleclick>
		</icon>
		<icon text="Goldensea" href="/usr/share/sbm/images/preview/goldensea.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install burg-theme-goldensea"
				  </ondoubleclick>
		</icon>
		<icon text="Sexybuntu" href="/usr/share/sbm/images/preview/sexybuntu.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install burg-theme-sexybuntu"
				  </ondoubleclick>
		</icon>
		<icon text="Tux-burger" href="/usr/share/sbm/images/preview/tux-burger.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install burg-theme-tux-burger"
				  </ondoubleclick>
		</icon>
		<icon text="Icarus" href="/usr/share/sbm/images/preview/icarus.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install burg-theme-tux-icarus"
				  </ondoubleclick>
		</icon>
		<icon text="Abstract" href="/usr/share/sbm/images/preview/abstract.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install burg-theme-abstract"
				  </ondoubleclick>
		</icon>
		<icon  text="Homer" href="/usr/share/sbm/images/preview/homer.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install burg-theme-homer"
				  </ondoubleclick>
		</icon> 
		<icon  text="Dark Shine" href="/usr/share/sbm/images/preview/darkshine.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install burg-theme-dark-shine"
				  </ondoubleclick>
		</icon>  
		<icon  text="Radiance" href="/usr/share/sbm/images/preview/radiance.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install burg-theme-tux-radiance"
				  </ondoubleclick>
		</icon>
		<icon  text="Kubuntu" href="/usr/share/sbm/images/preview/orange.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install burg-theme-kubuntu"
				  </ondoubleclick>
		</icon>
		<icon  text="KubuntuBrand" href="/usr/share/sbm/images/preview/kubuntu_brand.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install burg-theme-kubuntu-brand"
				  </ondoubleclick>
		</icon> 
		<icon text="UbuntuBrand" href="/usr/share/sbm/images/preview/ubuntu_brand.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install burg-theme-ubuntu-brand"
				  </ondoubleclick>
		</icon>
		<icon text="Gnome" href="/usr/share/sbm/images/preview/gnome1.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install burg-theme-gnome"
				  </ondoubleclick>
		</icon>
		<icon text="UbuntuWall" href="/usr/share/sbm/images/preview/ubuntu_wall.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install burg-theme-ubuntu-wall"
				  </ondoubleclick>
		</icon>
		<icon text="KubuntuWall " href="/usr/share/sbm/images/preview/kubuntu_wall.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install burg-theme-kubuntu-wall"
				  </ondoubleclick>
		</icon>
		<icon text="Vitruvio" href="/usr/share/sbm/images/preview/vitruvio.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install burg-theme-vitruvio"
				  </ondoubleclick>
		</icon>
		<icon text="Minimal" href="/usr/share/sbm/images/preview/minimal.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install burg-theme-minimal"
				  </ondoubleclick>
		</icon>
		<icon text="Mint" href="/usr/share/sbm/images/preview/mint.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install burg-theme-mint"
				  </ondoubleclick>
		</icon>
		<icon text="Wasp" href="/usr/share/sbm/images/preview/wasp.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install burg-theme-wasp"
				  </ondoubleclick>
		</icon>
		<icon text="Sunset" href="/usr/share/sbm/images/preview/sunset.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install burg-theme-sunset"
				  </ondoubleclick>
		</icon>
		<icon text="Hortensia" href="/usr/share/sbm/images/preview/hortensia.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install burg-theme-hortensia"
				  </ondoubleclick>
		</icon>
		<icon text="Fortune" href="/usr/share/sbm/images/preview/fortune.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install burg-theme-fortune"
				  </ondoubleclick>
		</icon>
		<icon text="Kubuntu-EOS" href="/usr/share/sbm/images/preview/kubuntu_EOS.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install burg-theme-kubuntu-eos"
				  </ondoubleclick>
		</icon>
		<icon text="Minimal by Sir" href="/usr/share/sbm/images/preview/minimal_by_sir.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install burg-theme-minimal-sir"
				  </ondoubleclick>
		</icon>
		<icon text="Gogo-noge-hot-legs" href="/usr/share/sbm/images/preview/gogo-noge-hot-legs.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install burg-theme-gogo-noge-hot-legs"
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
	      <label>
	      p7=$(head -18 /usr/share/sbm/$language | tail -1)
	      echo $p7
	      </label>
	      <button height="45">
			<title>
			b7=$(head -19 /usr/share/sbm/$language | tail -1)
			echo $b7
			</title>
			<code>
			xterm -e "sudo apt-get remove --purge burg burg-themes burg-emu"
			</code>
	      </button>
      </hlayout>
      <hlayout>
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
      </hlayout>
      <label>
      pp3=$(head -59 /usr/share/sbm/$language | tail -1)
      echo $pp3
      </label>
      <hlayout>
	      <combobox var="isotoremove">
	      cat ~/.sbm/listaiso
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
	  <label>echo ""</label>
	  <button>
		<title>
		b6=$(head -15 /usr/share/sbm/$language | tail -1)
		echo $b6
		</title>
		<code>
		xterm -e "sudo update-burg"
		</code>
	  </button>
	  <label>echo ""</label>
</hlayout>
</config>
