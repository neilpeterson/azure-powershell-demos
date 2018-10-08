<#
 .DESCRIPTION
    Creates a simple Ubuntu virtual machine.

 .NOTES
    Creates a simple Ubunut virtual machine using the Azure PowerShell Core module.
 #>

$params = @{
    ResourceGroupName = "posh-core-demo";
    Name = "posh-core-demo";
    Image = "UbuntuLTS"
}

$creds = Get-Credential
New-AzVM @params -Credential $creds