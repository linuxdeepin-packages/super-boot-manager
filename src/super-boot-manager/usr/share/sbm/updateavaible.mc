<config>
	<global var="language">
	language=$(cat ~/.sbm/language)
	echo $language
	</global>
	<img src="/usr/share/sbm/images/attention.png" align="center" /> 
	<label>
	qt=$(head -49 /usr/share/sbm/$language | tail -1)
	echo $qt
	qtt=$(head -50 /usr/share/sbm/$language | tail -1)
	echo $qtt
	</label>
	<hlayout>
		<button>
			<title>
			yes=$(head -51 /usr/share/sbm/$language | tail -1)
			echo $yes
			</title>
			<code>
			#cd ~/.sbm/
			#wget http://www.sourceslist.eu/ccount/click.php?id=40
			#mv click.php\?id\=40 super-boot-manager.deb
			#sudo dpkg -i super-boot-manager.deb
			sudo apt-get update && sudo apt-get install --reinstall super-boot-manager
			a=$(pidof buc)
			kill $a
			super-boot-manager
			</code>
		</button>
		<button>
			<title>
			no=$(head -52 /usr/share/sbm/$language | tail -1)
			echo $no
			</title>
			<code>
			bash /usr/share/sbm/killpop
			</code>
		</button>
	</hlayout>
	<label>
	qtr=$(head -55 /usr/share/sbm/$language | tail -1)
	echo $qt
	qttr=$(head -56 /usr/share/sbm/$language | tail -1)
	echo $qtt
	</label>
</config>
