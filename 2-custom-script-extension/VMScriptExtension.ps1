<#
 .DESCRIPTION
    Creates logs on VM with custom script extension.

 .NOTES
    Sample script to run Azure custom script extension on Azure VM.
 #>

$params = @{
    resourceGroupName = "win-server";
    location = "eastus";
    name = "win-server";
    vmName = "win-server";
    FileUri = "https://raw.githubusercontent.com/neilpeterson/azure-powershell-demos/master/2-custom-script-extension/customscriptdemo.ps1";
    Run = "customscriptdemo.ps1"
}

Set-AzVMCustomScriptExtension @params
