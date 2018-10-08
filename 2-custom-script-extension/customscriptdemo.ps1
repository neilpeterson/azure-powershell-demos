<#
 .DESCRIPTION
    Creates simple log file on Azure VM.

 .NOTES
    Sample script used to demonstrate Azure custom script extension.
 #>

$folder = "c:\temp"
$log = "c:\temp\AzureLog.txt"
$date = get-date

If (!(Test-Path $log)) {
    New-Item -Path $folder -ItemType Directory
    New-Item -Path $log -ItemType File
    Add-Content -Value "NEW LOG: Azure PowerShell Endpoint - $date" -Path $log
} else {
    Add-Content -Value "EXSISITNG LOG: Azure PowerShell Endpoint - $date" -Path $log
}