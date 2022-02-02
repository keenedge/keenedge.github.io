+++
title="default install"
+++
1. proxmox-create vm
1. Start Machne

run mx installer

boot options->choose systemd

reboot


    sudo apt-get update
    sudo apt-get install openssh-server

now ssh to the the new salt minion box and continue

follow these instruction: https://repo.saltstack.com/#debian


    wget -O - https://repo.saltstack.com/py3/debian/10/amd64/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add -
    echo "deb http://repo.saltstack.com/py3/debian/10/amd64/latest buster main" >> /etc/apt/sources.list.d/saltstack.list 
    sudo apt-get install salt-minion
    sudo systemctl restart salt-minion
    
set the minin config to master=salt.local

restart the minion

    sudo systemctl restart salt-minion

ssh to salt master (salt)

list unaccepted yes

    salt-key

accept all new keys
    
    salt-key -A


DONE!!!  All future configuration si not with sal state.

    wget -O - https://repo.saltstack.com/py3/debian/10/amd64/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add -
    echo "deb http://repo.saltstack.com/py3/debian/10/amd64/latest buster main" >> /etc/apt/sources.list.d/saltstack.list 
    sudo apt-get install salt-minion
    sudo systemctl restart salt-minion

    


## dns / dhcp
    https://wiki.debian.org/Bind9   