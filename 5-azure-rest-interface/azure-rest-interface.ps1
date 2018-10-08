<#
 .DESCRIPTION
    Returns a list of Resource Groups

 .NOTES
    Sample script to return a list of Azure Resoure Groups using an Azure REST endpoint.
 #>

# Key Vault Name
$vault = "billBooth"

# Get Azure secrets from Key Vault
$TenantId = (Get-AzKeyVaultSecret -VaultName $vault -Name AzureTenantID).SecretValueText
$ClientId = (Get-AzKeyVaultSecret -VaultName $vault -Name AzureClientID).SecretValueText
$ClientSecret = (Get-AzKeyVaultSecret -VaultName $vault -Name AzureClientSecret).SecretValueText
$SubscriptionId = (Get-AzKeyVaultSecret -VaultName $vault -Name AzureSubscriptionID).SecretValueText
$Resource = "https://management.core.windows.net/"

# Request
$RequestAccessTokenUri = "https://login.microsoftonline.com/$TenantId/oauth2/token"
$Body = "grant_type=client_credentials&client_id=$ClientId&client_secret=$ClientSecret&resource=$Resource"
$Token = Invoke-RestMethod -Method Post -Uri $RequestAccessTokenUri -Body $Body -ContentType 'application/x-www-form-urlencoded'


$ResourceGroupApiUri = "https://management.azure.com/subscriptions/$SubscriptionId/resourcegroups?api-version=2017-05-10"
$Headers = @{}
$Headers.Add("Authorization","$($Token.token_type) "+ " " + "$($Token.access_token)")
$ResourceGroups = Invoke-RestMethod -Method Get -Uri $ResourceGroupApiUri -Headers $Headers

# Output resource groups
Write-Output $ResourceGroups