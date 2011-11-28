<config>
	  <global var="language">
	  cd /usr/share/sbm/
	  language=$(cat ~/.sbm/language)
	  echo $language
	  </global>

	  <tab>
		<title>
		tabtitle1=$(head -32 /usr/share/sbm/$language | tail -1)
		echo $tabtitle1
		</title>
		<label>
		echo
		</label>
		<hlayout>
			  <label>echo " "</label>
			  <label>
			  up=$(head -47 /usr/share/sbm/$language | tail -1)
			  echo $up 
			  </label>
			  <button>
				    <title>
				    b48=$(head -48 /usr/share/sbm/$language | tail -1)
				    echo $b48
				    </title>
				    <code>
				    bash /usr/share/sbm/updater
				    </code>
			  </button>
			  <label>echo " "</label>
		</hlayout>
		<scrolllayout>
				<label>
				echo  ______
				echo "| INFO |"
				echo " --------"
				echo
				echo Reference page of this project: http://www.sourceslist.eu
				echo
				echo Super-Boot-Manager has been realised with BUC.
				echo
				echo Flag icons has been created by antibakteriell 
				echo "(http://antibakteriell.deviantart.com/art/Flag-Icons-FIFA-WC-2010-167149016?q=1&qo=1)" 
				echo which are distribuited with Creative Commons Attribution 3.0 License
				echo http://creativecommons.org/licenses/by/3.0/
				echo
				echo "DEVELOPERS"
				echo
				echo "Alessandro Lanave <alessandro.lanave@gmail.com>"
				echo "Giuseppe Diaferia <canopus0003@gmail.com>"
				echo "Antonio Zagaria <antoniozagaria89@gmail.com>"
				echo "Brazilian & Portuguese localization - Filipo Tardim <filipotardim@gmail.com>"
				echo "Croatian localization - Goran Vidovic <trebelnik2@gmail.com>"
				echo "Dutch localization - Dennis Van der Meer <dennis@dvdmeer.nl>"
				echo "French localization - Stephane Robert <ns.robert@gmail.com> (www.webdevonlinux.fr)"
				echo "German localization - Janek Bettinger <321tux@arcor.de> (www.321tux.de)"
				echo "Hungarian localization - Richard Somlói <level@somloirichard.hu> (www.somloirichard.hu)"
				echo "Indonesian localization - Ibrahim Surya Perkasa <mindscrewer06@yahoo.com>"
				echo "Polish localization - Piotr Boruta <abcubuntu@gmail.com> (www.abcubuntu.com)"
				echo "Spanish localization - Bernardo Miguel Savone <bmsavone@gmail.com>"
				echo "Swedish localization - Robert Blomqvist <robbe81@gmail.com>"
				echo "Romanian localization - Marius Bob <znupii@znupii.ro> (www.znupii.ro)"
				echo
				echo "BURG THEMES"
				echo
				echo "Rights reserved to the authors. All themes are licensed under a Creative Commons Attribution-Noncommercial-Share Alike 3.0 License."
				echo "http://creativecommons.org/licenses/by-nc-sa/3.0/"
				echo
				echo "- Abstract by Ingalex derived by Sora-Clean with wallpaper by Serial2305" 
				echo "  http://serial2305.deviantart.com/art/Armyshopped-145505963"
				echo
				echo "- Autumn by Ingalex derived by Sora-Clean with wallpaper by WindyLife"
				echo "  http://windylife.deviantart.com/art/Japanese-Maple-Leaf-Wallpaper-142771054"
				echo
				echo "- Dark Shine by SWOriginal derived by radiance"
				echo "  http://sworiginal.deviantart.com/art/Dark-Shine-BURG-168869916"
				echo
				echo "- Fortune by OrphanShadow" 
				echo "  http://gnome-look.org/content/show.php/Fortune+-+BURG+Theme?content=128929"
				echo
				echo "- Gnome Theme by Dario http://fuorichiave.blogspot.com/"
				echo "  http://gnome-look.org/content/show.php/Gnome+theme+for+burg?content=122560"
				echo
				echo "- Gogo-noge-hot-legs Theme by Goran Vidovic"
				echo
				echo "- Goldensea by Ingalex derived by Sora-Clean with wallpaper by tonyelieh"
				echo "  http://tonyelieh.deviantart.com/art/Golden-Sea-75025078"
				echo
				echo "- Homer Theme by Xabz edited by Ingalex"
				echo "  http://archxz.wordpress.com/"
				echo "  icon theme Boxex vista-like by TPDKCasimir http://blog.tpdkdesign.net/"
				echo
				echo "- Hortensia by IngAlex derived by Sora-Clean with wallpaper by viZZZual.com"
				echo "  http://www.flickr.com/photos/vizzzual-dot-com/2451144069/in/photostream/"
				echo
				echo "- Kubuntu Brand by IngAlex derived by Kubuntu Theme"
				echo "  http://www.sourceslist.eu/burg-2/tema-kubuntu-brand-per-il-burg/"
				echo
				echo "- Kubuntu EOS by Alessandro Pra (jarod82) derived by Fortune"
				echo "  http://kde-look.org/content/show.php/Kubuntu-EOS+BURG+theme?content=134584"
				echo
				echo "- Kubuntu by Orange derived by Sora-Clean"
				echo "  http://forum.ubuntu-it.org/index.php/topic,354069.0.html"
				echo "  icon theme Boxex vista-like by TPDKCasimir http://blog.tpdkdesign.net/"
				echo
				echo "- Kubuntu Wall by IngAlex derived by Sora-Clean with wallpaper by ﻿viZZZual.com"
				echo "  http://www.flickr.com/photos/vizzzual-dot-com/2226095398/"
				echo "  fonts Aerosol Graffiti http://www.coolfonts.info/font-595-aerosol_graffiti.php"
				echo
				echo "- Magic by Ingalex derived by Fortune with wallpaper by Peter Norvig"
				echo "  http://picasaweb.google.com/peter.norvig/Landscape#5489767755607288706"
				echo
				echo "- Minimal by Dario http://fuorichiave.blogspot.com/ derived by Sora-Clean"
				echo "  http://ventiseiad.deviantart.com/art/Burg-theme-Minimal-164711116"
				echo
				echo "- Minimal by Sir-Nimaj derived by Refit theme"
				echo "  http://sir-nimaj.deviantart.com/#/d2xhk79"
				echo
				echo "- Mint by Hokaze derived by Sora-Clean"
				echo "  http://gnome-look.org/content/show.php?content=124274"
				echo
				echo "- Picchio theme by Picchio derived by Sora-Clean"
				echo "  http://picchiopc.wordpress.com"
				echo
				echo "- Radiance by Safin derived by Sora-Clean"
				echo "  http://gnome-look.org/content/show.php/Ubuntu+Radiance+for+Grub+2+%5BBURG%5D?content=121105"
				echo
				echo "- Sexybuntu by IngAlex derived by Ubuntu theme"
				echo
				echo "- Sunset by Alfredo Cioccolani derived by Burg Theme (Hokaze)"
				echo
				echo "- Tux-burger by IngAlex derived by Ubuntu theme with wallpaper by Paul Empson"
				echo "  http://picasaweb.google.com/paulempsonphotography/Scapes#5413972667834456562"     
				echo
				echo "- Ubuntu Brand by IngAlex derived by Kubuntu Theme"
				echo "  http://www.sourceslist.eu/burg-2/tema-ubuntu-brand-per-il-burg/"
				echo
				echo "- Ubuntu Wall by IngAlex derived by Sora-Clean with wallpaper by ﻿viZZZual.com"
				echo "  http://www.flickr.com/photos/vizzzual-dot-com/2226095398/"
				echo "  fonts Aerosol Graffiti http://www.coolfonts.info/font-595-aerosol_graffiti.php"
				echo
				echo "- Vitruvio by ruben0909 derived by Winter theme"
				echo "  http://gnome-look.org/content/show.php/vitruvio+for+grub2+with+burg?content=124143"
				echo
				echo "- Wasp by Alfredo Cioccolani derived by Burg Theme (Hokaze)"
				echo
				echo "PLYMOUTH THEMES"
				echo
				echo "- MIB-Kubuntu Plymouth Theme by love2spooge"
				echo "  http://love2spooge.deviantart.com/art/MIB-Kubuntu-Plymouth-Theme-170196314"
				echo
				echo "- MIB-Ubuntu Plymouth Theme by love2spooge"
				echo "  http://love2spooge.deviantart.com/art/MIB-Ubuntu-Plymouth-Theme-170195920"
				echo
				echo "- Kubuntu Logo Stripes by pepedopolous" 
				echo "  http://kde-look.org/content/show.php/Kubuntu+Logo+Stripes?content=139968"
				echo
				echo "- Stargate by love2spooge"
				echo "  http://love2spooge.deviantart.com/art/Plymouth-Stargate-Theme-193977103"
				echo
				echo "- DM-Ubuntu by danodymake" 
				echo "  http://danodymake.deviantart.com/art/DM-Ubuntu-Plymouth-Theme-181365341"
				echo
				echo "- MIB-Oxygen by emanueleeeee" 
				echo "  http://kde-look.org/content/show.php/MIB+Ossigeno+Ultimate+Plymouth?content=126945"
				echo
				echo "- Ubuntu-Sunrise by dinin" 
				echo "  http://gnome-look.org/content/show.php/Ubuntu+sunrise+plymouth?content=129696"
				echo
				echo "- Space-Sunrise by inameiname" 
				echo "  http://gnome-look.org/content/show.php/Space-Sunrise+Plymouth+Splash?content=129678"
				echo
				echo "- Earth-Sunrise by zeckman1138" 
				echo "  http://gnome-look.org/content/show.php/Earth+Sunrise+Plymouth+Theme?content=137171"
				echo
				echo "- Mint-Sunrise by Osiris-MP" 
				echo "  http://gnome-look.org/content/show.php/mint-sunrise+plymouth+splash+screen?content=141222"
				echo
				echo "- Linux-is-sexy by n3cr0-0" 
				echo "  http://gnome-look.org/content/show.php/linux+is+sexy+plymouth-splash?content=139216"
				echo
				echo "- Narwhals by chinwildchic ken" 
				echo "  http://gnome-look.org/content/show.php/Ubuntu+Narwhals+Plymouth+Bootscreen?content=141461"
				echo
				echo "- Elementary-Logo by dark-gwydion" 
				echo "  http://dark-gwydion.deviantart.com/art/Elementary-Plymouth-Theme-176621836"
				echo
				echo "- Elementary-Logo2 by dark-gwydion" 
				echo "  http://dark-gwydion.deviantart.com/art/elementary-plymouth-theme-2-186802869"
				echo
				echo "- Azenis by xqtr123" 
				echo "  http://xqtr123.deviantart.com/art/Azenis-plymouth-theme-192382093"
				echo
				echo "- Lmint by killhellokitty" 
				echo "  http://killhellokitty.deviantart.com/art/LinuxMint-Lmint-2-1-plymouth-181730273"
				echo
				echo "- Kmint by killhellokitty" 
				echo "  http://killhellokitty.deviantart.com/art/Kmint-1-0-plymouth-theme-181972492"
				echo
				echo "- Plymouth Wheat by Paolo Bernardi" 
				echo "  http://paolobernardi.wordpress.com/2010/11/10/plymouth-wheat/"
				echo
				echo "- PAW-OX X by love2spooge" 
				echo "  http://love2spooge.deviantart.com/art/PAW-OS-X-Plymouth-Theme-173974024"
				echo
				echo "- PAW-Ubuntu by love2spooge" 
				echo "  http://love2spooge.deviantart.com/art/PAW-Ubuntu-Plymouth-Theme-173974272"
				echo
				echo "- PAW-Arch by kahlil88" 
				echo "  http://kahlil88.deviantart.com/art/Paw-Arch-Plymouth-Theme-208418769"
				echo
				echo "- Mint-Logo by maloy" 
				echo "  http://gnome-look.org/content/show.php/LinuxMint+new+logos+unofficial+plymouth+?content=141059"
				echo
				echo "- Spinfinity-mint-01 by maloy" 
				echo "  http://gnome-look.org/content/show.php/LinuxMint+new+logos+unofficial+plymouth+?content=141059"
				echo
				echo "- Spinfinity-mint-02 by maloy" 
				echo "  http://gnome-look.org/content/show.php/LinuxMint+new+logos+unofficial+plymouth+?content=141059"
				echo
				echo "- Ubuntu Orange by swordjr" 
				echo "  http://gnome-look.org/content/show.php/Ubuntu-Orange-Plymouth+%28Lucid%29?content=128813"
				echo
				echo "- Spinfinity-Ubuntu-Women by maloy" 
				echo "  http://gnome-look.org/content/show.php/Ubuntu+Women+plymouth+themes?content=141075"
				echo
				echo "- Ubuntu-logo-women by maloy" 
				echo "  http://gnome-look.org/content/show.php/Ubuntu+Women+plymouth+themes?content=141075"
				echo
				echo "- AzenisBuntu by pegellinux" 
				echo "  http://gnome-look.org/content/show.php/AzenisBuntu+plymouth+themes?content=138960"
				echo
				echo "- Fun With Linux by pegellinux" 
				echo "  http://gnome-look.org/content/show.php/Fun_With_Linux+Plymouth+Themes?content=138721"
				echo
				echo "- Fun With Linux 2 by pegellinux" 
				echo "  http://gnome-look.org/content/show.php/Fun_With_Linux_2+plymouth?content=138795"
				echo
				echo "- FWL Gold by pegellinux" 
				echo "  http://gnome-look.org/content/show.php/FWL_Gold+plymouth?content=138829"
				echo
				echo "- INTERNAUTA-MINT by Osiris-MP" 
				echo "  http://gnome-look.org/content/show.php/PC+Linux+MINT+Plymouth+Splash+Screen?content=141388"
				echo
				echo "- LMDE by technoshaun" 
				echo "  http://gnome-look.org/content/show.php/Linux+Mint+Debian+Edition+Plymouth?content=140429"
				echo
				echo "- U-p 2 by pegellinux" 
				echo "  http://gnome-look.org/content/show.php/U-p_2+Plymouth+theme?content=140302"
				echo
				echo "- U-p by pegellinux" 
				echo "  http://gnome-look.org/content/show.php/U-p+Plymouth+theme?content=140198"
				echo
				echo "- Ubuntu Green 2 by pegellinux" 
				echo "  http://gnome-look.org/content/show.php/Ubuntu_green_2_1+Plymouth?content=138784"
				echo
				echo "- Ubuntu Green by pegellinux" 
				echo "  http://gnome-look.org/content/show.php/Ubuntu_green+Plymouth?content=138718"
				echo
				echo "- Mintdoes7 by D-Dan" 
				echo "  http://gnome-look.org/content/show.php/mintdoes7+plymouth+splash?content=135895"
				echo
				echo "- Houston Texans by technoshaun" 
				echo "  http://gnome-look.org/content/show.php/Houston+Texans+Plymouth+Splash+Screen?content=134203"
				echo
				echo "- My-Ubuntu-Logo by meteo1984" 
				echo "  http://gnome-look.org/content/show.php/New+Plymouth+Splash+M1984?content=126005"
				echo
				echo "Special thanks to:"
				echo "- Richard Paul Fahey <richpaulfahey@yahoo.com.au>"
				echo "- Mefrio (Mario Guerriero) for some idea from Plymouth-Manager <mefrio.g@gmail.com>" 
				echo "  http://sourceforge.net/projects/plymouthmanager/"
				echo
				echo "SCRIPT BASH"
				echo
				echo "- script to fix Plymouth with proprietary Nvidia or ATI video drivers:"
				echo "  http://www.webupd8.org/2010/10/script-to-fix-ubuntu-plymouth-for.html"
				echo "  http://kyleabaker.com/2010/07/11/how-to-fix-your-ubuntu-boot-screen/"
				echo "- other scripts: Alessandro Lanave"
				echo
				</label>
		</scrolllayout>
	  </tab>
	  <hlayout>
		      <button>
				<title>
				b16=$(head -33 /usr/share/sbm/$language | tail -1)
				echo $b16
				</title>
				<code>
				buc /usr/share/sbm/license.mc &
				</code>
		      </button>
		      <button>
			      <title>
			      b17=$(head -34 /usr/share/sbm/$language | tail -1)
			      echo $b17
			      </title>
			      <code>
			      zenity --info --title="buc" --text="http://www.sourceslist.eu"
			      </code>
		      </button>
		      <button>
			      <title>
			      b18=$(head -35 /usr/share/sbm/$language | tail -1)
			      echo $b18
			      </title>
			      <code>
			      zenity --info --title="buc" --text="http://code.google.com/p/burg/"
			      <code>
		      </button>
		      <button>
			      <title>
			      b19=$(head -36 /usr/share/sbm/$language | tail -1)
			      echo $b19
			      </title>
			      <code>
			      zenity --info --title="buc" --text="http://buc.opensource.tk"
			      </code>
		      </button>
		      <button>
			      <title>
			      b20=$(head -37 /usr/share/sbm/$language | tail -1)
			      echo $b20
			      </title>
			      <code>
			      zenity --info --title="buc" --text="http://www.sicilinux.org"
			      </code>
		      </button>
		      <label> echo " " </label><label> echo " " </label><label> echo " " </label><label> echo " " </label><label> echo " " </label>
	  </hlayout>
</config>
