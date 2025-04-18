<# Chocolatey Setup #> 
Set-ExecutionPolicy Bypass -Scope Process -Force
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

<# Enable global confirmations to skip -y flags #> 
choco feature enable -n=allowGlobalConfirmation

<# Lista de programas a instalar #>
$packages = @(
    "git"                                 # Controle de versão
    "dotnet-8.0-sdk"                      # SDK .NET 8
    "googlechrome"                        # Navegador principal
    "mpc-hc"                              # Player leve
    "microsoft-windows-terminal"          # Terminal moderno
    "vscode"                              # Editor de código
    "sql-server-management-studio"        # Ferramenta SQL
    "postman"                             # Testes de API
    "wsl2"                                # Kernel update do WSL2
    "notepadplusplus"                     # Editor leve
    "docker-desktop"                      # Contêineres (Linux/WSL e Windows)
    "visualstudio2022buildtools"          # Build Tools para .NET
    "7zip"                                # Compactador/descompactador
    "fiddler"                             # Inspeção de tráfego HTTP
    "dbeaver"                             # Cliente de banco de dados
)

<# Instala os pacotes #>
$packages | ForEach-Object { choco install $_ }
