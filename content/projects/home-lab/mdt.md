https://www.dell.com/support/kbdoc/en-us/000121955/installing-active-directory-domain-services-and-promoting-the-server-to-a-domain-controller


New-NetIPAddress -IPAddress 10.0.0.201 -DefaultGateway 10.0.0.1 -PrefixLength 24 -InterfaceIndex (Get-NetAdapter).InterfaceIndex



    # connect to the remote machine
    $c = Get-Credential
    $s = New-PSSession -ComputerName 10.0.0.201 -Credential $c
    Enter-Psssession $s

    # Make the machine a domain controller
    Add-WindowsFeature AD-Domain-Services
    Install-ADDSForest -DomainName xisle.net -InstallDNS


    # join the domain
    To join the domain point to the dns server





qm create 110 --name dc-01  --cores 2 --ide0 local-lvm:32 --ide2 local:iso/Server2019.iso,media=cdrom --machine pc-i440fx-6.1 --memory 4096 --meta creation-qemu=6.1.0,ctime=1644284558 --name xx --net0 e1000=7E:DD:96:7C:51:46,bridge=vmbr0,firewall=1 --numa 0 --ostype win10 --scsihw virtio-scsi-pci --smbios1 uuid=8e462112-9a49-46d6-8071-3c91331d4522 --sockets 2 --boot order=ide0;ide2;net0

before joining the domain set static ip and use windows dns

