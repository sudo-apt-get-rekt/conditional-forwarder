#Conditional Forwarder Zone Creation
#Description: This script gathers information necessary to create DNS forwarder on one, or multiple servers.
#Author: Jarrett Allman (jallman@roguefitness.com)

$cred = Get-Credential
$servers = Read-Host "Enter list of DNS servers separated by commas (no spaces) to create the conditional forwarder on"

Invoke-Command -ComputerName $servers -Credential $cred -ScriptBlock {
    $authority = Read-Host "Enter list of servers to forward requests to, separated by commas (no spaces)"
    $domainName = Read-Host "Enter the domain name to forward requests for"
    Add-DnsServerConditionalForwarderZone -Name $domainName -MasterServers $authority -PassThru
}