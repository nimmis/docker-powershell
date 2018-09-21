
Write-Host "Add /data/modules to $Env:PSModulePath"
$Env:PSModulePath=$Env:PSModulePath+":/data/modules"


$psdir="/data/env"

Get-ChildItem "${psdir}\*.ps1" | %{.$_}

Write-Host "Custom PowerShell Environment Loaded" 

cd /data/scripts

