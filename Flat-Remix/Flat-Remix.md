
# Icon theme

Download Flat-Remix-Blue-Dark theme from [drasite.com](https://drasite.com/flat-remix) and uncompress file.

    sudo mv Flat-Remix-Blue-Dark/ /usr/share/icons/
    gsettings set org.gnome.desktop.interface icon-theme "Flat-Remix-Blue-Dark"


# GTK theme

Download Flat-Remix-GTK-Blue-Dark-Solid theme from [drasite.com](https://drasite.com/flat-remix-gtk) and uncompress file.

    sudo mv Flat-Remix-GTK-Blue-Dark-Solid/ /usr/share/themes/
    gsettings set org.gnome.desktop.interface gtk-theme "Flat-Remix-GTK-Blue-Dark-Solid"


# GNOME theme
Download Flat-Remix-Blue-Dark-fullpanel theme from [drasite.com](https://drasite.com/flat-remix-gnome) and uncompress file.

    sudo mv Flat-Remix-Blue-Dark-fullPanel/ /usr/share/themes/
    gnome-shell-extension-tool -e user-theme@gnome-shell-extensions.gcampax.github.com    
    gsettings set org.gnome.shell.extensions.user-theme name "Flat-Remix-Blue-Dark-fullPanel"
    

# Dark desktop

    gsettings set org.gnome.desktop.background primary-color '#0F0F0F'
    gsettings set org.gnome.desktop.background secondary-color '#0F0F0F'



    
    
# Using gnome-tweaks
    
    gnome-tweaks&

Extensions -> Enable "User themes"

Apparience:

Applications: Flat-Remix-GTK-Blue-Dark-Solid
Icons: Flat-Remix-Blue-Dark
GNOME Shell: Flat-Remix-Blue-Dark-fullPanel





# Terminal theme 

New gnome-terminal-profiles.dconf file with following contents:

    [/]
    default='02bc1c4f-e444-4516-934e-69e2232de265'
    list=['b1dcc9dd-5262-4d8d-a863-c897e6d979b9', '4e2730fa-1918-4aa1-84c2-eaa9446f47ef', '02bc1c4f-e444-4516-934e-69e2232de265']
    
    [:02bc1c4f-e444-4516-934e-69e2232de265]
    allow-bold=true
    background-color='#27272a2a3434'
    bold-color='#FFFFFFFFFFFF'
    bold-color-same-as-fg=true
    bold-is-bright=true
    cursor-colors-set=false
    font='JetBrains Mono Medium 11'
    foreground-color='#FFFFFFFFFFFF'
    highlight-background-color='rgb(17,17,17)'
    highlight-colors-set=true
    highlight-foreground-color='rgb(54,123,240)'
    palette=['#1F1F22222929', '#D4D419191919', '#5E5EBDBDABAB', '#FEFEA4A44C4C', '#36367b7bf0f0', '#BFBF2E2E5D5D', '#4949AEAEE6E6', '#E6E6E6E6E6E6', '#8C8C4242ABAB', '#ECEC01010101', '#4747D4D4B9B9', '#FFFF8A8A1818', '#27277F7FFFFF', '#D7D716165555', '#0505A1A1F7F7', '#FFFFFFFFFFFF']
    use-system-font=true
    use-theme-background=false
    use-theme-colors=false
    use-theme-transparency=false
    visible-name='Flat-Remix-Dark'
    
    [:4e2730fa-1918-4aa1-84c2-eaa9446f47ef]
    background-color='rgb(30,33,40)'
    bold-color-same-as-fg=true
    bold-is-bright=true
    cursor-colors-set=false
    font='JetBrains Mono Medium 11'
    foreground-color='rgb(255,255,255)'
    highlight-background-color='rgb(230,230,230)'
    highlight-colors-set=true
    highlight-foreground-color='rgb(31,34,41)'
    palette=['rgb(31,34,41)', 'rgb(212,25,25)', 'rgb(38,162,105)', 'rgb(254,164,76)', 'rgb(54,123,240)', 'rgb(191,46,93)', 'rgb(73,174,230)', 'rgb(230,230,230)', 'rgb(140,66,171)', 'rgb(236,1,1)', 'rgb(51,218,122)', 'rgb(255,138,24)', 'rgb(39,127,255)', 'rgb(215,22,85)', 'rgb(5,161,247)', 'rgb(255,255,255)']
    use-system-font=true
    use-theme-colors=false
    visible-name='Flat-Remix-Darker'


#Import terminal theme

    dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-terminal-profiles-Flat-Remix-Dark.dconf

#Export terminal theme

    dconf dump /org/gnome/terminal/legacy/profiles:/ > gnome-terminal-profiles-Flat-Remix-Dark.dconf



