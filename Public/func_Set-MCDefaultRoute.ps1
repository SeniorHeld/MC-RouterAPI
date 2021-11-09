function Set-MCDefaultRoute {
    param(
    [string]$uri,
    [string]$backend
    )
    if($null -eq $uri){
        Write-Error "URI not filled out. "
    } elseif ($null -eq $backend) {
        Write-Error "No Backend delivered. "
    } else {
        $Method  = "Post"
        $ContentType = "application/json"
        $Headers = @{
                "backend" = "$backend";
            }
        $Body = $Headers | ConvertTo-Json
        Invoke-RestMethod -Uri "$($uri)/defaultRoute" -Method $Method -ContentType $ContentType -Body $Body
    }
}