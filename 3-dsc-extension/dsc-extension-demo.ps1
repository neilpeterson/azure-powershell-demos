﻿$cred = Get-Credential
Login-AzureRmAccount -credential $cred

$resourcegroup = "ignitedemo1"
$storageacct = "ignitedemodsc"
$containername = "ignitedemodsc"
$file = "c:\windows-dsc-iis-app.ps1"
$vm = "ignitedemo1"
$config = "App"
$blob = "windows-dsc-iis-app.ps1.zip"
$config = "App"
$version = "2.14"
$location = "West US"


# publish to azure storage
Publish-AzureRmVMDscConfiguration -ResourceGroupName $resourcegroup -ConfigurationPath $file -StorageAccountName $storageacct -ContainerName $containername

# appy to vm
Set-AzureRmVMDscExtension -ResourceGroupName $resourcegroup -VMName $vm -ArchiveBlobName $blob -ArchiveStorageAccountName $storageacct -ConfigurationName $config -ArchiveContainerName $containername -Version $version -Location $location