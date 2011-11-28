<config>
	<global var="language">
	language=$(cat ~/.sbm/language)
	echo $language
	</global>
	<img src="/usr/share/sbm/images/remove.png" align="center" /> 
	<label>
	qt=$(head -70 /usr/share/sbm/$language | tail -1)
	echo $qt
	</label>
	<hlayout>
                  <button>
			  <title>
			  ok=$(head -58 /usr/share/sbm/$language | tail -1)
			  echo $ok
			  </title>
			  <code>
			  bash /usr/share/sbm/killpop
			  </code>
		  </button>
	</hlayout>
</config>
