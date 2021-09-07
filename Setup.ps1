#Requires -RunAsAdministrator

Param(    
    [switch]
    $IncludeSuggested
)

# 1. Download Chocolatey (https://chocolatey.org/)
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

$Manifest = "r.project", "rtools", "python", "git" 

if ($IncludeSuggested) {
    # Add suggested packages to the manifest
    $OptionalPackages = "r.studio", "vscode", "gh"
    $Manifest += $OptionalPackages
}

choco install -y $Manifest
