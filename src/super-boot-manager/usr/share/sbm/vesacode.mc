<config>
	  <global var="language">
	  cd /usr/share/sbm/
	  language=$(cat ~/.sbm/language)
	  echo $language
	  </global>
	  <tab>
		  <title>
		  ok=$(head -179 /usr/share/sbm/$language | tail -1)
		  echo $ok
		  ok=$(head -180 /usr/share/sbm/$language | tail -1)
		  echo $ok
		  </title>
		  <scrolllayout>
                  <label>
		  echo "vesa code | resolution  | bits"
		  echo "---------------------------------"
		  echo "0x0300    | 640x400     | 8 bits"
		  echo "0x0301    | 640x480     | 8 bits"
		  echo "0x0303    | 800x600     | 8 bits"
		  echo "0x0305    | 1024x768   | 8 bits"
		  echo "0x0307    | 1280x1024 | 8 bits"
		  echo "0x0310    | 640x480     | 15 bits"
		  echo "0x0311    | 640x480     | 16 bits"
		  echo "0x0313    | 800x600     | 15 bits"
		  echo "0x0314    | 800x600     | 16 bits"
		  echo "0x0316    | 1024x768   | 15 bits"
		  echo "0x0317    | 1024x768   | 16 bits"
		  echo "0x0319    | 1280x1024  | 15 bits"
		  echo "0x031a    | 1280x1024   | 16 bits"
		  echo "0x030d    | 320x200     | 15 bits"
		  echo "0x030e    | 320x200     | 16 bits"
		  echo "0x0320    | 320x200     | 24 bits"
		  echo "0x0393    | 320x240     | 8 bits"
		  echo "0x0395    | 320x240     | 16 bits"
		  echo "0x0396    | 320x240     | 24 bits"
		  echo "0x03b3    | 512x384     | 8 bits"
		  echo "0x03b5    | 512x384     | 16 bits"
		  echo "0x03b6    | 512x384     | 24 bits"
		  echo "0x03c3    | 640x350     | 8 bits"
		  echo "0x03c5    | 640x350     | 16 bits"
		  echo "0x03c6    | 640x350     | 24 bits"
		  echo "0x0333    | 720x400     | 8 bits"
		  echo "0x0335    | 720x400     | 16 bits"
		  echo "0x0336    | 720x400     | 24 bits"
		  echo "0x0353    | 1152x864    | 8 bits"
		  echo "0x0355    | 1152x864    | 16 bits"
		  echo "0x0356    | 1152x864    | 24 bits"
		  echo "0x0363    | 1280x960    | 8 bits"
		  echo "0x0365    | 1280x960    | 16 bits"
		  echo "0x0366    | 1280x960    | 24 bits"
		  echo "0x0321    | 640x480     | 24 bits"
		  echo "0x0322    | 800x600     | 24 bits"
		  echo "0x0323    | 1024x768    | 24 bits"
		  echo "0x0324    | 1280x1024   | 24 bits"
		  echo "0x0343    | 1400x1050   | 8 bits"
		  echo "0x0345    | 1400x1050   | 16 bits"
		  echo "0x0346    | 1400x1050   | 24 bits"
		  echo "0x0373    | 1600x1200   | 8 bits"
		  echo "0x0375    | 1600x1200   | 16 bits"
		  echo "0x0376    | 1600x1200   | 24 bits"
		  echo "0x0383    | 1792x1344   | 8 bits"
		  echo "0x0385    | 1792x1344   | 16 bits"
		  echo "0x0386    | 1792x1344   | 24 bits"
		  echo "0x03d3    | 1856x1392   | 8 bits"
		  echo "0x03d5    | 1856x1392   | 16 bits"
		  echo "0x03d6    | 1856x1392   | 24 bits"
		  echo "0x03e3    | 1920x1440   | 8 bits"
		  echo "0x03e5    | 1920x1440   | 16 bits"
		  echo "0x03e6    | 1920x1440   | 24 bits"
		  </label>
		  </scrolllayout>
	  </tab>
</config>
