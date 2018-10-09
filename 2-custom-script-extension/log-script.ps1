<#
 .DESCRIPTION
    Creates simple log file on Azure VM.

 .NOTES
    Author: Neil Peterson
    Intent: Sample to demonstrate Azure VM Custom Script Extension.
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