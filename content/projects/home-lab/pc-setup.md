+++
title="pc-setup"
+++

First we need to clone a repo to get the setup scripts

1. Install Git.


        winget install git.git


2. Close  and open a new Admin terminal pick up the new path

    ```` 
    # clone the repo

    git clone https://github.com/keenedge/keenedge.github.io.git d:\projects\xisle\kb
    
    # run the setup script
    d:/projects/xisle/kb/setup.ps1

[setup.ps1](/code/pc-setup/setup.ps1)


    New-Item -Path 'D:\MDT\MDT-BUILD' -ItemType Directory -Force
    New-Item -Path 'D:\MDT\MDT-BUILD-LOGS' -ItemType Directory -Force
    New-Item -Path 'D:\MDT\MDT-DEPLOY' -ItemType Directory -Force
    New-Item -Path 'D:\MDT\MDT-DEPLOY-LOGS' -ItemType Directory -Force


    Get-VMSwitch

    New-VM -Name "VM-TEST" -Path "C:\VM" -MemoryStartupBytes 4GB -NewVHDPath "C:\VM\VM-TEST\VM-TEST-C.vhdx" -NewVHDSizeBytes 30GB -Generation 2 -Switch "Default Switch" -BootDevice NetworkAdapter

    Set-VM -Name "VM-TEST" -ProcessorCount 2

    Set-VMDvdDrive -VMName TestVM -Path .\WinBuild.iso

    
