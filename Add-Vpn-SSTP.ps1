$Name = "VPN SSTP"
$ServerAddress = "vpn.domain.de"
$DnsSuffix = "domain.de"
$A=""
$A=New-EapConfiguration
Add-VpnConnection -Name $Name -ServerAddress $ServerAddress -TunnelType "SSTP" -EncryptionLevel "Required" -AuthenticationMethod Eap -SplitTunneling -DnsSuffix $DnsSuffix -RememberCredential -EapConfigXmlStream $A.EapConfigXmlStream