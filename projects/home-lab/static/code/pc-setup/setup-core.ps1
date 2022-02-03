function isadmin($x) {
    $currentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
    return $currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
}


function install-winget-package (
   [string]$winGetId, [string]$extraArgs
){  
    $listApp = winget list --exact -q $winGetId
    if ([String]::Join("", $listApp).Contains($winGetId)) {
        Write-Host "$winGetId is already installed"
    } else {
        if( $extraArgs -eq "" ) {
            write-host "Installing $winGetId"
            winget install $winGetId --accept-package-agreements --accept-source-agreements --silent --force  
        }
        else
        {
            write-host "Installing $winGetId with $extraArgs"
            winget install $winGetId --accept-package-agreements --accept-source-agreements --silent --force --override $extraArgs  
        }
    }
}

function add-to-system-path (
    [string]$winGetId
){
    $x = isadmin
    
    if ( ! $x ) {
        write-host "THe add-to-system-path function requires and admin elevated shell." -ForegroundColor Red
        return
    }
    $regKey = 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment'

    $oldpath = (Get-ItemProperty -Path $regKey -Name PATH).path
    $newpath = "$oldpath;c:\path\to\folder"

    Set-ItemProperty -Path $regKey -Name PATH -Value $newPath
}