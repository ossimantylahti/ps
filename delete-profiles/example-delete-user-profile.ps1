#example: delete user profile from computer

$computerName=TORD0000
Get-CimInstance -Class Win32_UserProfile -ComputerName $computerName | Where-Object { $_.LocalPath.split('\')[-1] -eq 'UserA' } | Remove-CimInstance





$computerName = 'TARGET_COMPUTER_NAME'
Invoke-Command -ComputerName $computerName -ScriptBlock {
    Get-CimInstance -Class Win32_UserProfile | Where-Object { $_.LocalPath.split('\')[-1] -eq 'UserA' } | Remove-CimInstance
}
