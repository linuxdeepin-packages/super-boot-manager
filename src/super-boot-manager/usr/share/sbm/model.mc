<config>
<global var="language">
cd /usr/share/sbm/
language=$(cat ~/.sbm/language)
echo $language
</global>
<tab>
<title>
ok=$(head -102 /usr/share/sbm/$language | tail -1)
echo $ok
</title>
<label>echo " "</label>
<img src="/usr/share/sbm/images/preview_plymouth/model.png" align="center" /> 
</tab>
</config>
