<#
 .DESCRIPTION
    Publishes DSC configuration.

 .NOTES
    Author: Neil Peterson
    Intent: Sample to demonstrate Azure VM DSC Extension.
 #>

$params = @{
    ResourceGroupName = "dsc-store";
    StorageAccountName = "dscstore007";
    ContainerName = "dscstore007";
    ConfigurationPath = "./dsc-configuration.ps1"
}

Publish-AzVMDscConfiguration @params
