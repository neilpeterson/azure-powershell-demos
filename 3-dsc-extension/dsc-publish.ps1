<#
 .DESCRIPTION
    Publishes DSC configuration.

 .NOTES
    Sample script to publish DSC configuration to Azure Storage blob.
 #>

$params = @{
    ResourceGroupName = "dsc-store";
    StorageAccountName = "dscstore007";
    ContainerName = "dscstore007";
    ConfigurationPath = "./dsc-configuration.ps1"
}

Publish-AzVMDscConfiguration @params
