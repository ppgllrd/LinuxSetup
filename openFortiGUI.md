# OpenFortiGUI

Download from [this link](https://github.com/theinvisible/openfortigui).


Contents of `sudo visudo` should be as follows:


    # This file MUST be edited with the 'visudo' command as root.
    #
    # Please consider adding local content in /etc/sudoers.d/ instead of
    # directly modifying this file.
    #
    # See the man page for details on how to write a sudoers file.
    #
    Defaults        env_reset
    Defaults        mail_badpass
    Defaults        secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:>
    
    # Host alias specification

    # User alias specification
    
    # Cmnd alias specification
    
    # User privilege specification
    root    ALL=(ALL:ALL) ALL
    
    # MUST BE BEFORE #includedir
    pepeg   ALL=(ALL) ALL
    
    # Allow members of group sudo to execute any command
    %sudo   ALL=(ALL:ALL) ALL
    
    # See sudoers(5) for more information on "#include" directives:
    
    # THIS LINE is NOT COMMENTED OUT!. # is part of include command
    #includedir /etc/sudoers.d




Contents of `/etc/sudoers.d/openfortigui` should be as follows:

    %sudo  ALL=NOPASSWD:SETENV: /usr/bin/openfortigui --start-vpn *



`pepeg` must be in `sudo` group:

    sudo usermod -aG sudo pepeg



Output of  `sudo -l` shoul be as follows:

    Matching Defaults entries for pepeg on dellXPS:
        env_reset, mail_badpass,
        secure_path=/usr/local/sbin\:/usr/local/bin\:/usr/sbin\:/usr/bin\:/sbin\:/bin
    
    User pepeg may run the following commands on dellXPS:
        (ALL) ALL
        (ALL : ALL) ALL
        (root) SETENV: NOPASSWD: /usr/bin/openfortigui --start-vpn *




