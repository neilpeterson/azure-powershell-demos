configuration APP {

    param
    (
        [string[]]$NodeName = 'localhost'
    )

    Import-DscResource -Module xWebAdministration

    node $NodeName {

        WindowsFeature IIS {
            Ensure = "Present"
            Name = "Web-Server"
        }

        WindowsFeature IISConsole {
            Ensure = "Present"
            Name = "Web-Mgmt-Console"
            DependsOn = "[WindowsFeature]IIS"
        }

        WindowsFeature Web-Asp-Net45 {
            Ensure = "Present"
            Name = "Web-Asp-Net45"
            DependsOn = "[WindowsFeature]IIS"
        }
    }
}