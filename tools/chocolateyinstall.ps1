
$ErrorActionPreference = 'Stop';


$packageName= 'gource'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/acaudwell/Gource/releases/download/gource-0.42/gource-0.42-setup.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  checksum      = 'FB81DDBB28BB3E65BE4CE0B76B6939B0D47093B485EB8AB86A88F05975C18BCD'
  checksumType  = 'sha256'

  silentArgs    = "/S"
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'gource*'
}

Install-ChocolateyPackage @packageArgs


















