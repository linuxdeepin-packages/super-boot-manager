<config>
    <title>
    echo Choose your language
    </title>
    <label> echo "Choose your language"</label>
	<iconlist var="language" mode="list" iconwidth="30" iconheight="30">
	    <icon href="/usr/share/sbm/images/flag/Brazil.png">
	    echo "brazilian"
	    </icon>
	    <icon href="/usr/share/sbm/images/flag/Croatia.png">
	    echo "croatian"
	    </icon>
	    <icon href="/usr/share/sbm/images/flag/Netherlands.png">
	    echo "dutch"
	    </icon>
	    <icon href="/usr/share/sbm/images/flag/England.png">
	    echo "english"
	    </icon>
	    <icon href="/usr/share/sbm/images/flag/France.png">
	    echo "french"
	    </icon>
	    <icon href="/usr/share/sbm/images/flag/Germany.png">
	    echo "german"
	    </icon>
	    <icon href="/usr/share/sbm/images/flag/Hungary.png">
	    echo "hungarian"
	    </icon>
	    <icon href="/usr/share/sbm/images/flag/Indonesia.png">
	    echo "indonesian"
	    </icon>
	    <icon href="/usr/share/sbm/images/flag/Italy.png">
	    echo "italian"
	    </icon>
	    <icon href="/usr/share/sbm/images/flag/Poland.png">
	    echo "polish"
	    </icon>
	    <icon href="/usr/share/sbm/images/flag/Portugal.png">
	    echo "portuguese"
	    </icon>
	    <icon href="/usr/share/sbm/images/flag/Romania.png">
	    echo "romanian"
	    </icon>
	    <icon href="/usr/share/sbm/images/flag/Spain.png">
	    echo "spanish"
	    </icon>
	    <icon href="/usr/share/sbm/images/flag/Sweden.png">
	    echo "swedish"
	    </icon>
	    <ondoubleclick>
	    if [ "$language" = "italian" ]; then
	    echo it > ~/.sbm/language
	    elif [ "$language" = "english" ]; then
	    echo en > ~/.sbm/language
	    elif [ "$language" = "croatian" ]; then
	    echo hr > ~/.sbm/language
	    elif [ "$language" = "brazilian" ]; then
	    echo ptbr > ~/.sbm/language
	    elif [ "$language" = "portuguese" ]; then
	    echo ptpt > ~/.sbm/language
	    elif [ "$language" = "indonesian" ]; then
	    echo id > ~/.sbm/language
	    elif [ "$language" = "french" ]; then
	    echo fr > ~/.sbm/language
	    elif [ "$language" = "german" ]; then
	    echo de > ~/.sbm/language
	    elif [ "$language" = "romanian" ]; then
	    echo ro > ~/.sbm/language
	    elif [ "$language" = "spanish" ]; then
	    echo es > ~/.sbm/language
	    elif [ "$language" = "swedish" ]; then
	    echo se > ~/.sbm/language
	    elif [ "$language" = "hungarian" ]; then
	    echo hu > ~/.sbm/language
	    elif [ "$language" = "dutch" ]; then
	    echo nl > ~/.sbm/language
	    elif [ "$language" = "polish" ]; then
	    echo pl > ~/.sbm/language
	    fi
	    buc /usr/share/sbm/sbm.mc
	    </ondoubleclick>
	</iconlist>
</config>
