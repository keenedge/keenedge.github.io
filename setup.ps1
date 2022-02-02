. ./setup-core.ps1

# code page fix
# https://github.com/PowerShell/PowerShell/issues/7233

# [console]::InputEncoding = [console]::OutputEncoding = [System.Text.UTF8Encoding]::new()

Write-Host "add the flutter bin folder to the system path"
add-to-system-path "D:\sw\flutter\bin"

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All -NoRestart

Restart-Computer


$packages = @{

# core
    "Microsoft.WindowsTerminal" = ""
    ;"Git.Git" = ""
    ;"Microsoft.PowerToys" = ""
    ;"Microsoft.VisualStudioCode" =  "`"/verysilent /suppressmsgboxes /tasks=!runCode,desktopicon,quicklaunchicon,addcontextmenufiles,addcontextmenufolders,associatewithfiles,addtopath`""
    ;"BraveSoftware.BraveBrowser" = ""
    ;"Google.Chrome" = ""

# c#/.net
    ;"Microsoft.VisualStudio.2022.Community" = ""

# flutter/firebase
    ;"Google.AndroidStudio" = ""
    ;"OpenJS.NodeJS.LTS" = ""

# dev-ops
    ;"Microsoft.WindowsAdminCenter" = ""
    ;"Microsoft.DeploymentToolkit" = ""
    ;"Microsoft.WindowsADK" = ""
    ;"Microsoft.ADKPEAddon" = ""

# communications
    ;"Microsoft.Teams" = ""
    ;"OpenWhisperSystems.Signal" = ""
    ;"WhatsApp.WhatsApp" = ""
    ;"SlackTechnologies.Slack" = ""

}
    
foreach( $key in $packages.keys) {
   install-winget-package $key $packages.$key
}

# code --install-extension ms-vscode.cpptools   