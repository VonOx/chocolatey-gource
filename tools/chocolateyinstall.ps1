
$ErrorActionPreference = 'Stop';


$packageName= 'gource'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/acaudwell/Gource/releases/download/gource-0.51/gource-0.51.win64-setup.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  checksum      = '853a53b76f9595d9fd8d0653cd838bc570cea5ea6deac5446a948a7b3000bea5'
  checksumType  = 'sha256'

  silentArgs    = "/S"
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'gource*'
}

Install-ChocolateyPackage @packageArgs


















