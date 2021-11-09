function New-MCRoute {
    param(
    [string]$uri,
    [string]$address,
    [string]$backend
    )
    if($null -eq $uri){
        Write-Error "URI not filled out. "
    } elseif ($null -eq $address) {
        Write-Error "No Address delivered. "
    } elseif ($null -eq $backend) {
        Write-Error "No Backend delivered. "
    } else {
        $Method  = "Post"
        $ContentType = "application/json"
        $Headers = @{
                "serverAddress" = "$address";
                "backend" = "$backend";
            }
        $Body = $Headers | ConvertTo-Json
        Invoke-RestMethod -Uri "$($uri)/routes" -Method $Method -ContentType $ContentType -Body $Body
    }
}