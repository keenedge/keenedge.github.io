+++
title="readme.md"
+++
function InstallWinGet()
{
	$hasPackageManager = Get-AppPackage -name "Microsoft.DesktopAppInstaller"

	if(!$hasPackageManager)
	{
		Add-AppxPackage -Path "https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx"
		
		$releases_url = "https://api.github.com/repos/microsoft/winget-cli/releases/latest"

		[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
		$releases = Invoke-RestMethod -uri "$($releases_url)"
		$latestRelease = $releases.assets | Where { $_.browser_download_url.EndsWith("msixbundle") } | Select -First 1
	
		Add-AppxPackage -Path $latestRelease.browser_download_url
	}
}

InstallWinGet


winget install Microsoft.WindowsTerminal
winget install Git.Git
winget install Microsoft.VisualStudioCode
winget install BraveSoftware.BraveBrowser


# flutter

winget install Google.Chrome
winget install Google.AndroidStudio

## build and run a basic project to:
  - download components
  - get the debug key generated


## Install

    git clone https://github.com/flutter/flutter.git -b stable

    $INCLUDE = "D:\SW\Flutter\bin"
    $OLDPATH = [System.Environment]::GetEnvironmentVariable('PATH','machine')
    $NEWPATH = "$OLDPATH;$INCLUDE"
    [Environment]::SetEnvironmentVariable("PATH", "$NEWPATH", "Machine")


    flutter config --android-studio-dir "C:\Program Files\Android\Android Studio\bin\"

use the SDK manager to add "Android SDK Command-Line tools"

    flutter doctor --android-licenses

    flutter doctor


# Firebase support
    winget install OpenJS.NodeJS.LTS

    npm install firebase-cli


    git remote add origin git@github.com:keenedge/KB.git

    git pull origin master --allow-unrelated-histories