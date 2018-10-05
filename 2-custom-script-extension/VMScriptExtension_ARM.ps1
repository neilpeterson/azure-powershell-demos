$resourceGroup = "win-server"
$serverName = "win-server"
$location = "eastus"
$scriptLocation = "https://raw.githubusercontent.com/neilpeterson/azure-powershell-demos/master/2-custom-script-extension/customscriptdemo.ps1"
$scriptName = "customscriptdemo.ps1"

$customScript = @{
    resourceGroupName = $resourceGroup;
    location = $location;
    name = $serverName;
    vmName = $serverName;
    FileUri = $scriptLocation;
    Run = $scriptName
}

Set-AzVMCustomScriptExtension @customScript
