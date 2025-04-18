<# Chocolatey Setup #> 
Set-ExecutionPolicy Bypass -Scope Process -Force
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

<# Enable global confirmations to skip -y flags #> 
choco feature enable -n=allowGlobalConfirmation

<# Lista de programas a instalar #>
$packages = @(
    "git"
    "dotnet-8.0-sdk"
    "googlechrome"
    "mpc-hc"
    "microsoft-windows-terminal"
    "vscode"
    "sql-server-management-studio"
    "nodejs-lts"
    "postman"
    "wsl2"
    "notepadplusplus"
    "docker-desktop"
)

<# Instala os pacotes #>
$packages | ForEach-Object { choco install $_ }
