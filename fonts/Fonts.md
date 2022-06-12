# Instalar fuentes comunes

    sudo apt-get install fonts-firacode
    sudo apt-get install fonts-clear-sans
    sudo apt-get install fonts-open-sans
    sudo apt-get install fonts-jetbrains-mono


# Cambiar fuentes interfaz del sistema
    gsettings set org.gnome.desktop.interface document-font-name 'SF Pro Text 11'
    gsettings set org.gnome.desktop.interface font-name 'SF Pro Text 11'
    gsettings set org.gnome.desktop.interface monospace-font-name 'JetBrains Mono Medium 12'


# Cambiar fuente de títulos de ventanas
    gsettings set org.gnome.desktop.wm.preferences titlebar-uses-system-font false
    gsettings set org.gnome.desktop.wm.preferences titlebar-font 'SF Pro Text 12'




# Con gnome-tweaks

    gnome-tweaks&

## Tipografías:
Texto interfaz: SF Pro Text Regular 11

Texto documento: SF Pro Text Regular 11

Texto mono: JetBrains Mono Medium 12

Títulos ventanas: SF Pro Text Bold 11

Hinting: Ligera

Alisado: Subpixel

Factor escalado: 1,25



## Tipografías-2:
Texto interfaz: Open Sans Semibold 11

Texto documento: Open Sans Regular 11

Texto mono: JetBrains Mono Medium 11

Títulos ventanas: Open Sans Bold 10

Hinting: Ninguno

Alisado: Subpixel

Factor escalado: 1,25



# Tipografías como ubuntu:
    sudo dpkg -i ./fontconfig-config_2.11.94-0ubuntu1.1_all.deb 


# .profile

# 35=old freetype, which makes fonts fatter
export FREETYPE_PROPERTIES="truetype:interpreter-version=35 autofitter:no-stem-darkening=0"


