# Increase fonts for LUKS' password prompt

Create file `/etc/initramfs-tools/scripts/init-top/setup-console` with following contents:
 

    #!/bin/sh
    
    case $1 in
    prereqs)
         echo "udev"
         exit 0
         ;;
    esac
    
    . /scripts/functions
    # Begin real processing below this line
    
    if test -x /bin/setfont && test -e /etc/console-font.psf.gz
    then
        setfont /etc/console-font.psf.gz
        log_success_msg 'Set console font'
    fi



Create file `/etc/initramfs-tools/hooks/setup-console` with this contents:

    #!/bin/sh
    
    case $1 in
    prereqs)
         echo ''
         exit 0
         ;;
    esac
    
    . /usr/share/initramfs-tools/hook-functions
    # Begin real processing below this line
    
    copy_exec /bin/setfont
    cp /etc/console-setup/cached_Lat15-Terminus18x10.psf.gz "$DESTDIR"/etc/console-font.psf.gz



Set execution permissions:

    sudo chmod +x /etc/initramfs-tools/scripts/init-top/setup-console 
    sudo chmod +x /etc/initramfs-tools/hooks/setup-console



Update `initramfs`:

    sudo update-initramfs -u




