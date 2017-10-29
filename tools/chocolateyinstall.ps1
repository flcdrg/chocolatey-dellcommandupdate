$ErrorActionPreference = 'Stop';

$packageName  = 'dellcommandupdate'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = ''

$packageArgs = @{
  packageName   = $packageName
  softwareName  = 'Dell Command | Update'
  fileType      = 'exe'
  silentArgs    = "/s"  
  validExitCodes= @(0)
  url           = "https://downloads.dell.com/FOLDER04358530M/1/Dell-Command-Update_X79N4_WIN_2.3.1_A00.EXE"
  checksum      = 'f322e74600468fd888183ec520e4e3a031fe8ab2b12a89c18b679dc589512254'
  checksumType  = 'sha256'
  destination   = $toolsDir
}

Install-ChocolateyPackage @packageArgs 