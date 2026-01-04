# -remove following apps from system-image. works ONLY for new users ! not already created ones!

$AppsToRemove = @(
"Clipchamp.Clipchamp",
"Microsoft.BingNews",
"Microsoft.BingWeather",
"Microsoft.GamingApp",
"Microsoft.GetHelp",
"Microsoft.Getstarted",
"Microsoft.MicrosoftOfficeHub",
"Microsoft.MicrosoftSolitaireCollection",
"Microsoft.MicrosoftStickyNotes",
"Microsoft.People",
"Microsoft.StorePurchaseApp",
"Microsoft.Todos",
"Microsoft.WindowsAlarms",
"microsoft.windowscommunicationsapps",
"Microsoft.WindowsFeedbackHub",
"Microsoft.WindowsMaps",
"Microsoft.WindowsStore",
"Microsoft.Xbox.TCUI",
"Microsoft.XboxGameOverlay",
"Microsoft.XboxGamingOverlay",
"Microsoft.XboxIdentityProvider",
"Microsoft.XboxSpeechToTextOverlay",
"Microsoft.YourPhone",
"Microsoft.ZuneMusic",
"Microsoft.ZuneVideo",
"MicrosoftCorporationII.QuickAssist",
"MicrosoftTeams",
"*Microsoft.549981C3F5F10*",
"Microsoft.XboxApp",
"*bing*",
"*FeedbackHub*",
"*Gaming*"
"*Xbox*",
"*ZuneMusic*",
"*ZuneVideo*"
)

ForEach($App in $AppsToRemove){
	echo "___ uninstallng: $App"
    Get-AppxProvisionedPackage -Online | Where-Object {$_.DisplayName -like $App} | Remove-AppxProvisionedPackage -Online
}