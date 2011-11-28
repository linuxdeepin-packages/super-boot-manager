<config>
	<global var="language">
	language=$(cat ~/.sbm/language)
	echo $language
	</global>
	<img src="/usr/share/sbm/images/attention.png" align="center" /> 
	<label>
	na=$(head -57 /usr/share/sbm/$language | tail -1)
	echo $na
	</label>
	<button>
		<title>
		no=$(head -58 /usr/share/sbm/$language | tail -1)
		echo $no
		</title>
		<code>
		bash /usr/share/sbm/killpop
		</code>
	</button>
</config>
