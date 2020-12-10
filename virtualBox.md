# VirtualBox kernel services

Create keys:
 
    su
    mkdir /root/module-signing
    cd /root/module-signing
    openssl req -new -x509 -newkey rsa:2048 -keyout MOK.priv -outform DER -out MOK.der -nodes -days 36500 -subj "/CN=YOUR_NAME/"
        
    ls
    chmod 600 MOK.priv 
    mokutil --import /root/module-signing/MOK.der



Create `/root/module_signing/sign-vbox-modules.sh` file as follows: 


    #!/bin/bash
    
    for modfile in $(dirname $(modinfo -n vboxdrv))/*.ko; do
      echo "Signing $modfile"
      /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 \
                                    /root/module-signing/MOK.priv \
                                    /root/module-signing/MOK.der "$modfile"
    done


Run signing script:

    su
    cd /root/module_signing
    sudo ./sign-vbox-modules.sh 
    sudo modprobe vboxdrv

