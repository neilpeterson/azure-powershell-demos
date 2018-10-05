$resourceGroup = "posh-demo2"
$vmName = "posh-demo2"
$vmImage = "UbuntuLTS"

$creds = Get-Credential

New-AzVM -ResourceGroupName $resourceGroup -Name $vmName -Image $vmImage -Credential $creds