#This script opens an Incognito Chrome window maximized and launches whatever website is passed in via the parameters
#You can choose a website from the parameter choices or type in any website address

#Run script in Ninja as the Current Logged on User

#Ninja Preset Parameters
#https://www.google.com
#https://www.github.com

#Set temp folder path and create folder if path doesn't exist
$chromeTemp = 'C:\ProgramData\ChromeTemp'
If (!(Test-Path $chromeTemp)) {New-Item -Path $chromeTemp -ItemType Directory}

#Set Chrome launch variables
$pathToChrome = 'C:\Program Files (x86)\Google\Chrome\Application\chrome.exe'
$tempFolder = '--user-data-dir=' + $chromeTemp # pick a temp folder for user data
$startMode = '--start-maximized --incognito' #chrome start up mode
$startPage=$args[0]

#Launch Chrome Browser
Start-Process -FilePath $pathToChrome -ArgumentList $tempFolder, $startMode, $startPage