<config>
	<global var="language">
	language=$(cat ~/.sbm/language)
	echo $language
	</global>
	<img src="/usr/share/sbm/images/help.png" align="center" /> 
	<label>
	na1=$(head -64 /usr/share/sbm/$language | tail -1)
	na2=$(head -65 /usr/share/sbm/$language | tail -1)
	na3=$(head -66 /usr/share/sbm/$language | tail -1)
	na4=$(head -67 /usr/share/sbm/$language | tail -1)
	na5=$(head -68 /usr/share/sbm/$language | tail -1)
	echo $na1
	echo $na2
	echo $na3
	echo $na4
	echo $na5
	</label>
        <hlayout>
		  <label>echo " "</label>
		  <button>
			  <title>
			  no=$(head -58 /usr/share/sbm/$language | tail -1)
			  echo $no
			  </title>
			  <code>
			  bash /usr/share/sbm/killpop
			  </code>
		  </button>
                  <label>echo " "</label>
        </hlayout>
</config> 
