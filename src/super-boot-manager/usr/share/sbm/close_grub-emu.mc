<config>
	<global var="language">
	cd /usr/share/sbm/
	language=$(cat ~/.sbm/language)
	echo $language
	</global>
	<tab>
	      <title>
	      ok=$(head -154 /usr/share/sbm/$language | tail -1)
	      echo $ok
	      </title>
	      <label>echo " "</label>
	      <button height="35">
			<title>closegrubemu=$(head -155 /usr/share/sbm/$language | tail -1)
			echo $closegrubemu
			</title>
			<code>
			xterm -e "sudo kill $(pidof grub-emu) && sudo bash killpop"
			</code>
	      </button>
	</tab>
</config>
 
