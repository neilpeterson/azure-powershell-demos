<#
 .DESCRIPTION
    Enables the IIS feature.

 .NOTES
    Author: Neil Peterson
    Intent: Sample to demonstrate Azure VM DSC Extension.
 #>

configuration windows-features {

    param
    (
        [string[]]$NodeName = 'localhost'
    )

    Import-DscResource -ModuleName PsDesiredStateConfiguration

    node $NodeName {

        WindowsFeature WebServer {
            Ensure = "Present"
            Name = "Web-Server"
        }
    }
}