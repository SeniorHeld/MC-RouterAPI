function Get-MCRoutes {
    param([string]$uri)
        if($null -eq $uri){
            Write-Error "URI not filled out. "
        } else {
            $Method = "Get"
            $Uri = "$uri/routes"
            $Headers = @{
                    Accept        = "application/json"
                }
            Invoke-RestMethod -Method $Method -Uri $Uri -Headers $Headers
        }
}