$customScript = @{

    resourceGroupName = 'win-server';
    location = 'eastus';
    name = 'WIN-SERVER';
    vmName = "WIN-SERVER";
    FileUri = "customscriptdemo.ps1";

}

Set-AzVMCustomScriptExtension @customScript
