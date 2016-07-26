
$ErrorActionPreference = 'Stop';


$packageName= 'gource'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/acaudwell/Gource/releases/download/gource-0.42/gource-0.42-setup.exe'
$url64      = ''

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  silentArgs    = "/S"
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'gource*'
}

Install-ChocolateyPackage @packageArgs


















