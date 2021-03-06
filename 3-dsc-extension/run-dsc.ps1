﻿<#
 .DESCRIPTION
    Enables IIS on VM with DSC extension.

 .NOTES
    Author: Neil Peterson
    Intent: Sample to demonstrate Azure VM DSC Extension.
 #>

$params = @{
    ResourceGroupName = "win-server";
    VMName = "win-server";
    ArchiveBlobName = "dsc-configuration.ps1.zip";
    ArchiveStorageAccountName = "dscstore007";
    ArchiveResourceGroupName = "dsc-store";
    ConfigurationName = "windows-features";
    ArchiveContainerName = "dscstore007";
    Version = "2.76"
}

Set-AzVMDscExtension @params


