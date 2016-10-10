#Modify as necessary. Maximum 12 DNS servers per vNet.
$DNSIPs = "10.0.0.4"
$vnet = Get-AzureRmVirtualNetwork -ResourceGroupName $rgName -name $vNetName
 
$vnet.DhcpOptions.DnsServers = $null
foreach ($IP in $DNSIPs)
{
$vnet.DhcpOptions.DnsServers += $IP
}
 
Set-AzureRmVirtualNetwork -VirtualNetwork $vnet