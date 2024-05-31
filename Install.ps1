<# chocolatey setup #> 
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')); 
​
<# allowing globally confirmation #> 
choco feature enable -n=allowGlobalConfirmation;

<# programs to install #>
@(
"git"
,"avastfreeantivirus"
,"dotnet-6.0-sdk"
,"dotnet-8.0-sdk"
,"chrome"
,"microsoft-windows-terminal"
,"vscode"
,"sql-server-management-studio"
,"nodejs-lts"
,"soapui"
,"postman"
,"notepadplusplus") + ($pins = @("vscode")) | % { choco install $_ };

<# avoiding future upgrades of these following programs. #> $pins | % { choco pin add -n="$_" }; 
