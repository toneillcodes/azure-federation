# Federate domain with Shibboleth using SAML 2.0

$dom = "test.school.edu"
$url = "https://shibtest.school.edu/idp/profile/SAML2/POST/SSO"
$ecpUrl = "https://shibtest.school.edu/idp/profile/SAML2/SOAP/ECP"
$uri = "https://shibtest.school.edu/idp/shibboleth"
$logouturl = "https://shibtest.school.edu/idp/profile/Logout"
$metadataurl = "https://shibtest.school.edu/idp/shibboleth"

# Either parse the cert from a file or drop it in here in base 64 encoding
#$cert = New-Object System.Security.Cryptography.X509Certificates.X509Certificate2("C:\temp\idp-signing.cer")
#$certBase64 = [System.Convert]::ToBase64String($cert.Export​([System.Security.Cryptography.X509Certificates.X509ContentType]::Cert))
$certBase64 = "MIIHQTCCBimgAwIBAgIMPgEuooM8sg388x4JMA0GCSqGSIb3DQEBCwUAMGYxCzAJBgNVBAYTAkJFMRkwFwYDVQQKE..."

Set-MsolDomainAuthentication –DomainName $dom -FederationBrandName "School Test" -Authentication Federated -PassiveLogOnUri $url -SigningCertificate $certBase64 -IssuerUri $uri -ActiveLogOnUri $ecpUrl -LogOffUri $logouturl -PreferredAuthenticationProtocol SAMLP
