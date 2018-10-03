$creds = Get-Credential
New-AzureRmResourceGroup -Name posh-mac -Location eastus
New-AzureRmVM -Name posh-mac -ResourceGroupName posh-mac -Credential $creds

$vm = Get-AzureRmVM

foreach ($item in $vm) {
    write-host $item.name
}