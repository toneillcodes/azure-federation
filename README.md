# azure-federation
Resources to assist with managing the federation settings for an Azure domain.

## usage
1. Retrieve the current domain federation settings
```
Get-MsolDomainFederationSettings -DomainName <String> [-TenantId <Guid>] [<CommonParameters>]
-DomainName: Specifies the fully qualified domain name to retrieve 
-TenantId: Specifies the unique ID of the tenant on which to perform the operation
```
