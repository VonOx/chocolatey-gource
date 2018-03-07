
$ErrorActionPreference = 'Stop';


$packageName= 'gource'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/acaudwell/Gource/releases/download/gource-0.47/gource-0.47.win64-setup.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  checksum      = 'ca666e9c9fc9f69bb4ee52ed3914982575c917986ca984cd18b5edcab9016385'
  checksumType  = 'sha256'

  silentArgs    = "/S"
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'gource*'
}

Install-ChocolateyPackage @packageArgs


















