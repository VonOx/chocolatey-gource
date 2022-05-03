
$ErrorActionPreference = 'Stop';


$packageName= 'gource'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/acaudwell/Gource/releases/download/gource-0.53/gource-0.53.win64-setup.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  checksum      = '41f105b348a932a5a4811945527ec686818f28b384e97455a0373075005d242d'
  checksumType  = 'sha256'

  silentArgs    = "/S"
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'gource*'
}

Install-ChocolateyPackage @packageArgs


















