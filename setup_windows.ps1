#Requires -RunAsAdministrator

# 1. Download Chocolatey (https://chocolatey.org/)
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

$Manifest = "r.project", "rtools", "anaconda3", "git", "miktex", "r.studio", "vscode", "gh"

choco install -y $Manifest
