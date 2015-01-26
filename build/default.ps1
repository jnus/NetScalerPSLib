$here = Split-Path $MyInvocation.MyCommand.Definition
$output = "$here\output"
$temp = "$here\temp"
Task Default -Depends Init, BuildOctopusStepTemplateNSDisableService
Task Init {
    New-Item $output -t directory -force
}


Task BuildOctopusStepTemplateNSDisableService {
    $file = Get-Content $here\..\lib\NS-UpdateService.ps1
    $result =  $file -join "\r\n" | Out-String

    $template = "$here\..\octopusdeploy\netscaler-adc-enable-disable-service.json"
    $templateOutput = "$output\netscaler-adc-enable-disable-service.json"

    test-path $here\..\octopusdeploy\netscaler-adc-enable-disable-service.json
    get-content $here\..\octopusdeploy\netscaler-adc-enable-disable-service.json |write-host

    (Get-Content $here\..\octopusdeploy\netscaler-adc-enable-disable-service.json -Encoding UTF8) `
    -replace 'TEMPLATE_SCRIPT_PLACEHOLDER', $result `
    | Set-Content $templateOutput -Force -Encoding UTF8

}
