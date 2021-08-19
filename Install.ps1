<# chocolatey setup #> 
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')); 
​
<# allowing globally confirmation #> 
choco feature enable -n=allowGlobalConfirmation;

<# programs to install #>
@(
"git"
,"dotnet3.5"
,"dotnet4.0"
,"dotnet4.5"
,"dotnet4.5.1"
,"dotnet4.5.2"
,"dotnet4.6"
,"dotnet4.6.1"
,"dotnet4.6.2"
,"dotnet4.7"
,"dotnet4.7.1"
,"dotnet4.7.2"
,"netfx-4.5.1-devpack"
,"netfx-4.5.2-devpack"
,"netfx-4.6.2-devpack"
,"netfx-4.7.1-devpack"
,"netfx-4.7.2-devpack"
,"dotnetcore-2.1-sdk"
,"dotnetcore-3.1-sdk"
,"dotnet-5.0-sdk"
,"chrome"
,"gimp"
,"cs-script"
,"microsoft-windows-terminal"
,"anydesk"
,"archi"
,"wireshark"
,"vscode"
,"nuget.commandline"
,"dotnetcore-windowshosting"
,"visualstudio2019buildtools"
,"aspnetcore-runtimepackagestore"
,"sql-server-management-studio"
,"azure-data-studio"
,"jdk11"
,"adobereader"
,"nodejs-lts"
,"soapui"
,"postman"
,"notepadplusplus") + ($pins = @("vscode", "github-desktop")) | % { choco install $_ };

<# avoiding future upgrades of these following programs. #> $pins | % { choco pin add -n="$_" }; 
