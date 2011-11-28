<config>
	<img src="/usr/share/sbm/images/octo_1.png" align="center" /> 
	<global var="language">
	language=$(cat ~/.sbm/language)
	echo $language
	</global>
	<tab>
		<label>
		echo " "
		</label>
		<title>
		edit=$(head -134 /usr/share/sbm/$language | tail -1)
		echo $edit
		</title>
		<vlayout>
			  <label>
			  ok=$(head -102 /usr/share/sbm/$language | tail -1)
			  echo $ok
			  </label>
			  <hlayout>
				  <button height="15">
						      <title>
						      ok=$(head -126 /usr/share/sbm/$language | tail -1)
						      echo $ok
						      </title>
						      <code>
						      buc tutorial.mc
						      </code>
				  </button>
				  <button height="15">
						      <title>
						      ok=$(head -178 /usr/share/sbm/$language | tail -1)
						      echo $ok
						      </title>
						      <label>
						      echo " "
						      </label>
						      <code>
						      buc vesacode.mc
						      </code>
				  </button>
			  </hlayout>
			  <label>
			  actdeact=$(head -135 /usr/share/sbm/$language | tail -1)
			  echo $actdeact
			  </label>
			  <button height="15">
					      <title>
					      act=$(head -136 /usr/share/sbm/$language | tail -1)
					      echo $act
					      </title>
					      <code>
					      xterm -e "sudo mv /etc/init/plymouth-splash.conf.disabled /etc/init/plymouth-splash.conf"
					      </code>
			  </button>
			  <button height="15">
					      <title>
					      act=$(head -137 /usr/share/sbm/$language | tail -1)
					      echo $act
					      </title>
					      <code>
					      xterm -e "sudo mv /etc/init/plymouth-splash.conf /etc/init/plymouth-splash.conf.disabled"
					      </code>
			  </button>
			  <label>
			  echo " "
			  </label>
		</vlayout>
	</tab>

	<tab>
	      <title>
	      themes=$(head -138 /usr/share/sbm/$language | tail -1)
	      echo $themes
	      </title>
	      <button height="15">
				    <title>
				    previewd=$(head -139 /usr/share/sbm/$language | tail -1)
				    echo $previewd
				    </title>
				    <code>
				    sudo plymouthd && sudo plymouth --show-splash && sleep 8 && sudo plymouth quit
				    </code>
	      </button>
	      <label>
	      installtheme=$(head -140 /usr/share/sbm/$language | tail -1)
	      echo $installtheme
	      </label>
	      <iconlist var="selezione" iconwidth="190" iconheight="90" mode="none">
			  <icon text="S o l a r" href="/usr/share/sbm/images/preview_plymouth/solar.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-solar"
				  </ondoubleclick>
			  </icon>
			  <icon text="K u b u n t u  L o g o" href="/usr/share/sbm/images/preview_plymouth/kubuntu_logo.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-kubuntu-logo"
				  </ondoubleclick>
			  </icon>
			  <icon text="S a b i l y" href="/usr/share/sbm/images/preview_plymouth/sabily.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-sabily"
				  </ondoubleclick>
			  </icon>
			  <icon text="U b u n t u  L o g o" href="/usr/share/sbm/images/preview_plymouth/ubuntu_logo.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-ubuntu-logo"
				  </ondoubleclick>
			  </icon>
			  <icon text="E d u b u n t u  L o g o" href="/usr/share/sbm/images/preview_plymouth/edubuntu_logo.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-edubuntu"
				  </ondoubleclick>
			  </icon>
			  <icon text="X u b u n t u  L o g o" href="/usr/share/sbm/images/preview_plymouth/xubuntu_logo.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-xubuntu-logo"
				  </ondoubleclick>
			  </icon>
			  <icon text="L u b u n t u  L o g o" href="/usr/share/sbm/images/preview_plymouth/lubuntu_logo.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-lubuntu-logo"
				  </ondoubleclick>
			  </icon>
			  <icon text="F a d e - i n" href="/usr/share/sbm/images/preview_plymouth/fade-in.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-fade-in"
				  </ondoubleclick>
			  </icon>
			  <icon text="S c r i p t" href="/usr/share/sbm/images/preview_plymouth/script.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-script"
				  </ondoubleclick>
			  </icon>
			  <icon text="S p i n f i n i t y" href="/usr/share/sbm/images/preview_plymouth/spinfinity.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-spinfinity"
				  </ondoubleclick>
			  </icon>
			  <icon text="U b u n t u  S t u d i o" href="/usr/share/sbm/images/preview_plymouth/ubuntustudio.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-ubuntustudio"
				  </ondoubleclick>
			  </icon>
			  <icon text="U b u n t u  S a t a n i c" href="/usr/share/sbm/images/preview_plymouth/satanic.png">
				  <ondoubleclick>
				  xterm -e "bash /usr/share/sbm/update_sources && sudo apt-get install satanic-plymouth-theme"
				  </ondoubleclick>
			  </icon>
			  <icon text="M I B - U b u n t u" href="/usr/share/sbm/images/preview_plymouth/MIB_Ubuntu.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-mib-ubuntu"
				  </ondoubleclick>
			  </icon>
			  <icon text="M I B - K u b u n t u" href="/usr/share/sbm/images/preview_plymouth/MIB_Kubuntu.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-mib-kubuntu"
				  </ondoubleclick>
			  </icon>
			  <icon text="S t a r g a t e" href="/usr/share/sbm/images/preview_plymouth/Stargate.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-stargate"
				  </ondoubleclick>
			  </icon>
			  <icon text="K u b u n t u S t r i p e s" href="/usr/share/sbm/images/preview_plymouth/kubuntu-logo-stripes.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-kubuntu-logo-stripes"
				  </ondoubleclick>
			  </icon>
			  <icon text="D M - U b u n t u" href="/usr/share/sbm/images/preview_plymouth/dm_ubuntu.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-dm-ubuntu"
				  </ondoubleclick>
			  </icon>
			  <icon text="M I B - O x y g e n" href="/usr/share/sbm/images/preview_plymouth/MIBOxygen.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-mib-oxygen"
				  </ondoubleclick>
			  </icon>
			  <icon text="S p a c e - S u n r i s e" href="/usr/share/sbm/images/preview_plymouth/space-sunrise.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-space-sunrise"
				  </ondoubleclick>
			  </icon>
			  <icon text="E a r t h - S u n r i s e" href="/usr/share/sbm/images/preview_plymouth/earth-sunrise.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-earth-sunrise"
				  </ondoubleclick>
			  </icon>
			  <icon text="U b u n t u - S u n r i s e" href="/usr/share/sbm/images/preview_plymouth/ubuntu-sunrise.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-ubuntu-sunrise"
				  </ondoubleclick>
			  </icon>
			  <icon text="L i n u x - i s - s e x y" href="/usr/share/sbm/images/preview_plymouth/linux-is-sexy.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-linux-is-sexy"
				  </ondoubleclick>
			  </icon>
			  <icon text="M i n t - S u n r i s e" href="/usr/share/sbm/images/preview_plymouth/mint-sunrise.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-mint-sunrise"
				  </ondoubleclick>
			  </icon>
			  <icon text="N a r w h a l s" href="/usr/share/sbm/images/preview_plymouth/Narwhals.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-narwhals"
				  </ondoubleclick>
			  </icon>
			  <icon text="P l y m o u t h  W h e a t" href="/usr/share/sbm/images/preview_plymouth/wheat.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-wheat"
				  </ondoubleclick>
			  </icon>
			  <icon text="A z e n i s" href="/usr/share/sbm/images/preview_plymouth/azenis.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-azenis"
				  </ondoubleclick>
			  </icon>
			  <icon text="E l e m e n t a r y" href="/usr/share/sbm/images/preview_plymouth/elementary-logo.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-elementary-logo-one"
				  </ondoubleclick>
			  </icon>
			  <icon text="E l e m e n t a r y  2" href="/usr/share/sbm/images/preview_plymouth/elementary-logo2.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-elementary-logo-two"
				  </ondoubleclick>
			  </icon>
			  <icon text="K m i n t" href="/usr/share/sbm/images/preview_plymouth/Kmint.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-kmint"
				  </ondoubleclick>
			  </icon>
			  <icon text="L m i n t" href="/usr/share/sbm/images/preview_plymouth/Lmint.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-lmint"
				  </ondoubleclick>
			  </icon>
			  <icon text="U b u n t u  S p l a s h" href="/usr/share/sbm/images/preview_plymouth/ubuntu_splash.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-int2mil-ubuntu-11.04"
				  </ondoubleclick>
			  </icon>
			  <icon text="P A W - U b u n t u" href="/usr/share/sbm/images/preview_plymouth/PAW_Ubuntu.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-paw-ubuntu"
				  </ondoubleclick>
			  </icon>
			  <icon text="P A W - O S  X" href="/usr/share/sbm/images/preview_plymouth/PAW_OS_X.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-paw-osx"
				  </ondoubleclick>
			  </icon>
			  <icon text="P A W - A r c h" href="/usr/share/sbm/images/preview_plymouth/paw_arch.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-paw-arch"
				  </ondoubleclick>
			  </icon>
			  <icon text="U b u n t u  O r a n g e" href="/usr/share/sbm/images/preview_plymouth/ubuntu_orange.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-ubuntu-orange"
				  </ondoubleclick>
			  </icon>
			  <icon text="M i n t - L o g o" href="/usr/share/sbm/images/preview_plymouth/mint-logo.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-mint-logo"
				  </ondoubleclick>
			  </icon>
			  <icon text="Spinfinity-Mint-1" href="/usr/share/sbm/images/preview_plymouth/spinfinity-mint-01.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-spinfinity-mint-one"
				  </ondoubleclick>
			  </icon>
			  <icon text="Spinfinity-Mint-2" href="/usr/share/sbm/images/preview_plymouth/spinfinity-mint-02.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-spinfinity-mint-two"
				  </ondoubleclick>
			  </icon>
			  <icon text="Spinfinity-Ubuntu-Women" href="/usr/share/sbm/images/preview_plymouth/spinfinity-ubuntu-women.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-spinfinity-ubuntu-women"
				  </ondoubleclick>
			  </icon>
			  <icon text="Ubuntu-Logo-Women" href="/usr/share/sbm/images/preview_plymouth/ubuntu-logo-women.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-ubuntu-logo-women"
				  </ondoubleclick>
			  </icon>
			  <icon text="A z e n i s B u n t u" href="/usr/share/sbm/images/preview_plymouth/AzenisBuntu.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-azenisbuntu"
				  </ondoubleclick>
			  </icon>
			  <icon text="Fun With Linux" href="/usr/share/sbm/images/preview_plymouth/Fun_With_LinuxU.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-fun-with-linux-one"
				  </ondoubleclick>
			  </icon>
			  <icon text="Fun With Linux 2" href="/usr/share/sbm/images/preview_plymouth/Fun_With_Linux_2.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-fun-with-linux-two"
				  </ondoubleclick>
			  </icon>
			  <icon text="FWL_Gold" href="/usr/share/sbm/images/preview_plymouth/FWL_Gold.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-fwl-gold"
				  </ondoubleclick>
			  </icon>
			  <icon text="INTERNAUTA MINT" href="/usr/share/sbm/images/preview_plymouth/INT-MINT.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-int-mint"
				  </ondoubleclick>
			  </icon>
			  <icon text="LMDE" href="/usr/share/sbm/images/preview_plymouth/LMDE.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-lmde"
				  </ondoubleclick>
			  </icon>
			  <icon text="M i n t d o e s 7" href="/usr/share/sbm/images/preview_plymouth/mintdoes7.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-mint-does-seven"
				  </ondoubleclick>
			  </icon>
			  <icon text="my-ubuntu-logo" href="/usr/share/sbm/images/preview_plymouth/my-ubuntu-logo.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-my-ubuntu-logo"
				  </ondoubleclick>
			  </icon>
			  <icon text="Texans" href="/usr/share/sbm/images/preview_plymouth/Texans.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-texans"
				  </ondoubleclick>
			  </icon>
			  <icon text="U-p" href="/usr/share/sbm/images/preview_plymouth/U-p.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-u-p-one"
				  </ondoubleclick>
			  </icon>
			  <icon text="U-p 2" href="/usr/share/sbm/images/preview_plymouth/U-p_2.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-u-p-two"
				  </ondoubleclick>
			  </icon>
			  <icon text="U b u n t u  G r e e n" href="/usr/share/sbm/images/preview_plymouth/Ubuntu_green.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-ubuntu-green-one"
				  </ondoubleclick>
			  </icon>
			  <icon text="U b u n t u  G r e e n 2.1" href="/usr/share/sbm/images/preview_plymouth/Ubuntu_GREEN_2_1.png">
				  <ondoubleclick>
				  xterm -e  "bash /usr/share/sbm/update_sources && sudo apt-get install plymouth-theme-ubuntu-green-two"
				  </ondoubleclick>
			  </icon>
	      </iconlist>
		    <hlayout>
			    <button height="15">
				    <title>
				    settheme=$(head -141 /usr/share/sbm/$language | tail -1)
				    echo $settheme
				    </title>
				    <code>
				    xterm -e "sudo update-alternatives --config default.plymouth"
				    </code>
			    </button>
			    <button height="15">
				      <title>
				      apply=$(head -142 /usr/share/sbm/$language | tail -1)
				      echo $apply
				      </title>
				      <code>
				      xterm -e "sudo update-initramfs -u"
				      </code>
			    </button>
		    </hlayout>
	      </tab>
	<tab>
	      <title>
	      create=$(head -143 /usr/share/sbm/$language | tail -1)
	      echo $create
	      </title>
	      <button height="35">
			<title>
			displaymodel=$(head -144 /usr/share/sbm/$language | tail -1)
			echo $displaymodel
			</title>
			<code>
			buc model.mc
			</code>
	      </button>
	      <vlayout>
		      <hlayout>
				<label>back=$(head -145 /usr/share/sbm/$language | tail -1)
				echo $back</label>
				<file var="background" mode="open" filter="Immagini(*.jpeg *.jpg *.png)">
				</file>
		      </hlayout>
		      <hlayout>
				<label>logot=$(head -146 /usr/share/sbm/$language | tail -1)
				echo $logot</label>
				<file var="logo" mode="open" filter="Immagini(*.jpeg *.jpg *.png)">
				</file>
		      </hlayout>
		      <hlayout>
				<label>name=$(head -147 /usr/share/sbm/$language | tail -1)
				echo $name</label>
				<text var="nametheme">tname=$(head -148 /usr/share/sbm/$language | tail -1)
				echo $tname</text>
                      </hlayout>
		      <hlayout>
				<label>echo " "</label><label>conv=$(head -132 /usr/share/sbm/$language | tail -1)
				echo $conv</label>
				<checkbox var="compress"/><label>echo " "</label>
                      </hlayout>
		      <hlayout>
				<label>dir=$(head -149 /usr/share/sbm/$language | tail -1)
				echo $dir</label>
				<file var="destinationtheme" mode="dir">
				</file>
		      </hlayout>
		      <button>
				<title>
				conv=$(head -131 /usr/share/sbm/$language | tail -1)
				echo $conv
				</title>
				<code>
				echo $background > ~/.sbm/background
				echo $logo > ~/.sbm/logo
				echo $nametheme > ~/.sbm/nametheme
				if [ $compress -eq "1" ]; then echo $destinationtheme > ~/.sbm/destinationtheme ; fi
				xterm -e "bash /usr/share/sbm/theme_maker"
				</code>
		      </button>
	      </vlayout>
	</tab>
	
        <tab>
		<title>
		driver=$(head -150 /usr/share/sbm/$language | tail -1)
		echo $driver
		</title>
		<hlayout>
			    <img src="/usr/share/sbm/images/danger.png" align="left" /><label>da=$(head -177 /usr/share/sbm/$language | tail -1)
			    echo $da</label><label>echo " "</label>
                </hlayout> 
		<label>
		b6=$(head -127 /usr/share/sbm/$language | tail -1)
		echo $b6
		echo " "
		b6=$(head -128 /usr/share/sbm/$language | tail -1)
		echo $b6
		echo " "
		b6=$(head -129 /usr/share/sbm/$language | tail -1)
		echo $b6
		echo " "
		b6=$(head -130 /usr/share/sbm/$language | tail -1)
		echo $b6
		</label>
		<vlayout>
			  <hlayout>
				    <label>echo " "</label><label>bootloader=$(head -151 /usr/share/sbm/$language | tail -1)
				    echo $bootloader</label>
				    <checkbox var="Grub2" text="Grub2"/><checkbox var="Burg" text="Burg"/><label>echo " "</label>
                          </hlayout>
			  <hlayout>
				    <button height="35">
					      <title>
					      fix=$(head -152 /usr/share/sbm/$language | tail -1)
					      echo $fix
					      </title>
					      <code>
					      cd /usr/share/sbm/
					      if [ $Grub2 -eq "1" ]; then xterm -e "sudo bash plymouth-resolution-fix.sh"; fi
					      if [ $Burg -eq "1" ]; then xterm -e "sudo bash plymouth-resolution-fix_burg.sh"; fi
					      </code>
				    </button>
				    <button height="35">
					      <title>
					      undofix=$(head -153 /usr/share/sbm/$language | tail -1)
					      echo $undofix
					      </title>
					      <code>
					      cd /usr/share/sbm/
					      if [ $Grub2 -eq "1" ]; then xterm -e "sudo bash plymouth-resolution-fix-revert-back.sh"; fi
					      if [ $Burg -eq "1" ]; then xterm -e "sudo bash plymouth-resolution-fix-revert-back_burg.sh"; fi
					      </code>
				    </button>
			  </hlayout>
		</vlayout>
	</tab>
</config>
