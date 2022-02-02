+++
title="SSH"
+++
### generate an ssh key file
    ssh-keyen

### change ssh key file password
    ssh-keyen -p

### copy sshkey to a server
    cat $env:USERPROFILE\.ssh\id_rsa.pub | ssh {IP-ADDRESS-OR-FQDN} "cat >> .ssh/authorized_keys"
