# vorhere dies aufrufen im Terminal:    Set-ExecutionPolicy Bypass -Scope Process
Get-AppxPackage  -allusers  -Name  "Clipchamp.Clipchamp"  |  Remove-AppxPackage
Get-AppxPackage  -allusers  -Name  "Microsoft.BingNews"  |  Remove-AppxPackage
Get-AppxPackage  -allusers  -Name  "Microsoft.BingWeather"  |  Remove-AppxPackage
Get-AppxPackage  -allusers  -Name  "Microsoft.GamingApp"  |  Remove-AppxPackage
Get-AppxPackage  -allusers  -Name  "Microsoft.GetHelp"  |  Remove-AppxPackage
Get-AppxPackage  -allusers  -Name  "Microsoft.Getstarted"  |  Remove-AppxPackage
Get-AppxPackage  -allusers  -Name  "Microsoft.MicrosoftOfficeHub"  |  Remove-AppxPackage
Get-AppxPackage  -allusers  -Name  "Microsoft.MicrosoftSolitaireCollection"  |  Remove-AppxPackage
Get-AppxPackage  -allusers  -Name  "Microsoft.MicrosoftStickyNotes"  |  Remove-AppxPackage
Get-AppxPackage  -allusers  -Name  "Microsoft.People"  |  Remove-AppxPackage
Get-AppxPackage  -allusers  -Name  "Microsoft.StorePurchaseApp"  |  Remove-AppxPackage
Get-AppxPackage  -allusers  -Name  "Microsoft.Todos"  |  Remove-AppxPackage
Get-AppxPackage  -allusers  -Name  "Microsoft.WindowsAlarms"  |  Remove-AppxPackage
Get-AppxPackage  -allusers  -Name  "microsoft.windowscommunicationsapps"  |  Remove-AppxPackage
Get-AppxPackage  -allusers  -Name  "Microsoft.WindowsFeedbackHub"  |  Remove-AppxPackage
Get-AppxPackage  -allusers  -Name  "Microsoft.WindowsMaps"  |  Remove-AppxPackage
Get-AppxPackage  -allusers  -Name  "Microsoft.WindowsStore"  |  Remove-AppxPackage
Get-AppxPackage  -allusers  -Name  "Microsoft.Xbox.TCUI"  |  Remove-AppxPackage
Get-AppxPackage  -allusers  -Name  "Microsoft.XboxGameOverlay"  |  Remove-AppxPackage
Get-AppxPackage  -allusers  -Name  "Microsoft.XboxGamingOverlay"  |  Remove-AppxPackage
Get-AppxPackage  -allusers  -Name  "Microsoft.XboxIdentityProvider"  |  Remove-AppxPackage
Get-AppxPackage  -allusers  -Name  "Microsoft.XboxSpeechToTextOverlay"  |  Remove-AppxPackage
Get-AppxPackage  -allusers  -Name  "Microsoft.YourPhone"  |  Remove-AppxPackage
Get-AppxPackage  -allusers  -Name  "Microsoft.ZuneMusic"  |  Remove-AppxPackage
Get-AppxPackage  -allusers  -Name  "Microsoft.ZuneVideo"  |  Remove-AppxPackage
Get-AppxPackage  -allusers  -Name  "MicrosoftCorporationII.QuickAssist"  |  Remove-AppxPackage
Get-AppxPackage  -allusers  -Name  "MicrosoftTeams"  |  Remove-AppxPackage

# ############## more:  ##########################################
Get-AppxPackage  -allusers  -Name  "*Microsoft.549981C3F5F10*"  |  Remove-AppxPackage  ##-: cortana
Get-AppxPackage  -allusers  -Name  "Microsoft.XboxApp"       |  Remove-AppxPackage
winget uninstall  --accept-source-agreements  Microsoft.OneDrive
winget uninstall "windows web experience pack"   ##-: New-Feeds / Nachrichten ...

# ############ disable web search in startmenu, ... ##############
# Define the registry path
$RegPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer"
# Check if the Explorer key exists, create if not
if (-not (Test-Path -Path $RegPath)) { New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows" -Name "Explorer" -Force }
# Set the DisableSearchBoxSuggestions DWORD (32-bit) to 1
Set-ItemProperty -Path $RegPath -Name "DisableSearchBoxSuggestions" -Value 1 -Type DWord -Force
# Restart the Windows Search service for changes to take effect
Restart-Service -Name "WSearch" -Force
Write-Host "Web search disabled for all users. Restart may be needed."

# ############## error/not there,...:  ##################################
#__  Get-AppxPackage  -allusers  -Name  "Microsoft.Windows.CloudExperienceHost"  |  Remove-AppxPackage
#__  Get-AppxPackage  -allusers  -Name  "Microsoft.XboxGameCallableUI"  |  Remove-AppxPackage
#__  Get-AppxPackage  -allusers  -Name  "Microsoft.Windows.PeopleExperienceHost"  |  Remove-AppxPackage

