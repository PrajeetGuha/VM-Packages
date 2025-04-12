$ErrorActionPreference = 'Stop'
Import-Module vm.common -Force -DisableNameChecking

$toolName = 'pestudio'
$category = VM-Get-Category($MyInvocation.MyCommand.Definition)

$zipUrl = 'https://www.winitor.com/tools/pestudio/current/pestudio.zip'
$zipSha256 = 'dffd6021bb2bd5b0af676290809ec3a53191dd81c7f70a4b28688a362182986f'

VM-Install-From-Zip $toolName $category $zipUrl -zipSha256 $zipSha256 -innerFolder $true
