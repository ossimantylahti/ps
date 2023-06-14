Write-Host "This script deletes the users from a target computer. Run it on an admin Powershell"
Write-Host "Script written by Ossi Mäntylahti, 2023"
$targetComputer = Read-Host -Prompt "Enter the name of the target computer"
$profilesFilePath = Read-Host -Prompt "Enter the path to the file containing the profile names"

# Read the profile names from the file
$profilesArray = Get-Content -Path $profilesFilePath

# Iterate over each profile and delete it
foreach ($profile in $profilesArray) {
    $profilePath = "\\$targetComputer\C$\Users\$profile"
    Remove-Item -Path $profilePath -Recurse -Force
}
