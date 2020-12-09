# Increase TTY fonts

    sudo  sed -i -e 's/^[[:space:]]*FONTSIZE.*$/#\0\nFONTSIZE="10x18"/' /etc/default/console-setupls /usr/share/consolefonts/
    sudo sed -i -e 's/^[[:space:]]*FONTFACE.*$/#\0\nFONTFACE="Terminus"/' /etc/default/console-setup
    
    sudo dpkg-reconfigure console-setup


