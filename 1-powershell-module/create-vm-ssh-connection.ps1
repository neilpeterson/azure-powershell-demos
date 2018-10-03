$rgname = "posh-ssh02"
$location = "eastus"
$vmname = "posh-ssh02"

New-AzureRmResourceGroup -Name $rgname -Location $location
$vm = New-AzureRmVM -Name $vmname -ResourceGroupName $rgname -ImageName UbuntuLTS
$vm.FullyQualifiedDomainName