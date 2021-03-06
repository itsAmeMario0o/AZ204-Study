using namespace System.Managment.Automation;

function New-AzureVM {
    [cmdletbinding(ConfirmImpact = 'low')]
    param (
        [parameter(Position = 0,
        Mandatory,
        ValueFromPipeline,
        HelpMessage = 'Enter VM name')]
        [alias('VM','Name')]
        [ValidateNotNullOrEmpty()]
        [string]$vmName,

        [parameter(Position = 1,
        HelpMessage = 'Enter Region name')]
        [alias('location')]
        [ValidateNotNullOrEmpty()]
        [string]$region,

        [parameter(Position = 2,
        HelpMessage = 'Enter Ports')]
        [ValidateNotNullOrEmpty()]
        [string[]]$ports = ('22','443')
    )
    
    begin {
        $az = Get-InstalledModule Az
        if (-not ($az)) {
            Write-Warning 'Please install Az module...'; Pause; Exit
        }
    }
    
    process {

        $params = @{

            'Name' = $vmName
            'Location' = $region
            'OpenPorts' = $ports
            #'Credential' = $(Get-Credential)
        }
        try {
            New-AzVM @params
        }
        catch {
            $pscmdlet.ThrowTerminatingError($_)
        }
    }

    end {
        Write-Output "Command Complete:"
    }
}
# Highlight all code, right click, run selection