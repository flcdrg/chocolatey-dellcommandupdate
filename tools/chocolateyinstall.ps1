$ErrorActionPreference = 'Stop';

$packageName  = 'dellcommandupdate'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = ''

#Based on NO DETECTION IN PRO
$packageArgs = @{
  packageName   = $packageName
  softwareName  = 'dellcommandupdate*'
  fileType      = 'exe'
  silentArgs    = "/s" # NSIS
  #OTHERS
  # Uncomment matching EXE type (sorted by most to least common)
  #silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' # Inno Setup
  #silentArgs   = '/s'           # InstallShield
  #silentArgs   = '/s /v"/qn"' # InstallShield with MSI
  #silentArgs   = '/s'           # Wise InstallMaster
  #silentArgs   = '-s'           # Squirrel
  #silentArgs   = '-q'           # Install4j
  #silentArgs   = '-s'           # Ghost
  # Note that some installers, in addition to the silentArgs above, may also need assistance of AHK to achieve silence.
  #silentArgs   = ''             # none; make silent with input macro script like AutoHotKey (AHK)
                                 #       https://chocolatey.org/packages/autohotkey.portable
  
  validExitCodes= @(0) #please insert other valid exit codes here
  url           = "https://downloads.dell.com/FOLDER04139436M/1/Systems-Management_Application_FXD2R_WN32_2.3.0_A00-00.EXE"  #download URL, HTTPS preferrred
  checksum      = '6E6D1FFA16F97AC29FD8EB6D1676412954529376FCD8210AE655F5FECC6132F5'
  checksumType  = 'sha256'
  url64bit      = ""   # 64bit URL here (HTTPS preferred) or remove - if installer contains both architectures (very rare), use $url
  checksum64    = ''
  checksumType64= 'sha256'
  destination   = $toolsDir
}

Install-ChocolateyPackage @packageArgs 

## See https://chocolatey.org/docs/helpers-reference

