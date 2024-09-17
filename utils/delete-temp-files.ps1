# Get the currently logged-on user's account name
$loggedInUserName = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name

# Extract the user account name from the full name
$loggedInUserName = $loggedInUserName.Split("\")[1]

# Output the logged-on user's account name
Write-Host "Logged-on user account name: $loggedInUserName"

$Aristocratpath = "C:\Users\" + $loggedInUserName + "\AppData\Local\Temp\"
$pathExists = Test-Path -Path $Aristocratpath

$CurrLocation = Get-Location
 
If (-not $pathExists)
{
    Write-Host (Get-Date -Format "yyyy-MM-dd HH:mm:ss")"Temp directory does not exist"
}
else
{
    Set-Location $Aristocratpath

    Write-Host (Get-Date -Format "yyyy-MM-dd HH:mm:ss")"Deleting temp files and folders"
    Get-ChildItem $env:TEMP\* | Remove-Item -confirm:$false -Force -Recurse -ErrorAction 'SilentlyContinue' 
	Write-Host (Get-Date -Format "yyyy-MM-dd HH:mm:ss")"Temp directory cleaned"
    
    Set-Location $CurrLocation
}
