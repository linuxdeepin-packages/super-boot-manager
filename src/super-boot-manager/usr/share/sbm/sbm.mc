<config>
	  <global>
	  cd /usr/share/sbm/
	  bash global
	  bash /usr/share/sbm/notifier
	  </global>
	  <global var="language">
	  language=$(cat ~/.sbm/language)
	  echo $language
	  </global>
	  <hlayout>
		    <label>echo "SUPER-BOOT-MANAGER"</label><label>version=$(head /usr/share/sbm/version)
		    echo $version</label><label>echo "by IngAlex & Canopus0003 & Tux10"</label></hlayout>
		    <img src="/usr/share/sbm/images/logo.png" align="center" /> 
		    <hlayout>
		    <button title="Burg-manager">
		    buc /usr/share/sbm/burg-manager.mc
		    </button>
		    <button title="Grub-manager">
		    buc /usr/share/sbm/grub-manager.mc
		    </button>
	  </hlayout>
	  <hlayout>
		    <button title="Plymouth-Manager">
		    buc /usr/share/sbm/plymouth.mc
		    </button>
		    <button>
			    <title>
			    info=$(head -176 /usr/share/sbm/$language | tail -1)
			    echo $info
			    </title>
			    <code>
			    buc /usr/share/sbm/info.mc
			    </code>
		    </button>
	  </hlayout>
	  <hlayout>
		    <button>
		    <title>
		    updateb=$(head -175 /usr/share/sbm/$language | tail -1)
		    echo $updateb
		    </title>
		    <code>
		    bash /usr/share/sbm/updater
		    </code>
		    </button>
		    <button>
			      <title>
			      updateb=$(head -181 /usr/share/sbm/$language | tail -1)
			      echo $updateb
			      </title>
			      <code>
			      xterm -e "bash /usr/share/sbm/update_sources"
			      </code>
		    </button>
	  </hlayout>
</config>
