<#
 .DESCRIPTION
    Creates a simple Ubuntu virtual machine.

 .NOTES
    Author: Neil Peterson
    Intent: Sample to demonstrate Azure PowerShell Core module.
 #>

$params = @{
    ResourceGroupName = "posh-core-demo";
    Name = "posh-core-demo";
    Image = "UbuntuLTS"
}

$creds = Get-Credential
New-AzVM @params -Credential $creds