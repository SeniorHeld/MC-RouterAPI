# MC-RouterAPI
 Powershell Module for [itzg/mc-router](https://github.com/itzg/mc-router)

# Installation: 
1. Add my Repository for easy use: \
`Register-PSRepository -Name Minenbauer -SourceLocation http://repo.minenbauer.de/repository/powershell/ -PackageManagementProvider nuget -InstallationPolicy Trusted`

2. Import this Module: \
`Import-Module -Name MC-RouterAPI`

3. Use it like described [here](#Examples)

# Examples
Lets say your mc-router runs under *192.168.1.1* and you have [exposed the API](https://github.com/itzg/mc-router#usage) under port *25575*:
1. List all Routes: \
`Get-MCRoutes -Uri http://192.168.1.1:25575`
```
Output:
{"vanilla.example.com":"192.168.1.10:25565","forge.example.com":"192.168.1.11:25565"}
```

2. Add a new route: \
`New-MCRoute -uri http://192.168.1.1:25575 -address paper.example.com -backend 192.168.1.12:25565`

3. Remove a route: \
`Remove-MCRoute -uri http://192.168.1.1:25575 -address paper.example.com`

4. Set the default route: \
`Set-MCDefaultRoute -uri http://192.168.1.1:25575 -backend "192.168.1.10:25566"`