<#
 .DESCRIPTION
    Sample Azure Automation Runbook

 .NOTES
    Sample Azure Automation Runbook
 #>

 Param(
    [parameter (Mandatory=$false)]
    [object] $WebhookData
)

$RequestBody = $WebhookData.RequestBody | ConvertFrom-Json
$Data = $RequestBody.data

write-output $Data