function Get-Full {
    <#
.Description
Gets help for all AdminToolbox Modules
#>

    Write-Host "Select the command you want to view help for and click ok" -ForegroundColor Yellow
    $Commands = Get-Command -module AdminToolbox, AdminToolbox.ActiveDirectory, AdminToolbox.EndpointManagement, AdminToolbox.Exchange, AdminToolbox.fftools, AdminToolbox.FileManagement, AdminToolbox.Fun, AdminToolbox.Networking, AdminToolbox.Office365, AdminToolbox.Remoting, AdminToolbox.Vmwareautomate
    $Select = $commands | Out-GridView -PassThru -Title "Select a Command to view Help For"
    $Function = $Select.name
    Get-Help $Function -ShowWindow
}