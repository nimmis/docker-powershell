$psdir="/data/env"

Get-ChildItem "${psdir}\*.ps1" | %{.$_}

Write-Host "Custom PowerShell Environment Loaded" 

cd /data/scripts

