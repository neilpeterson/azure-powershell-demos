<#
 .DESCRIPTION
    Enables the IIS feature.

 .NOTES
    Sample DSC configuration to enable the IIS feature.
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