function Remove-MCRoute {
    param(
    [string]$uri,
    [string]$address
    )
    if($null -eq $uri){
        Write-Error "URI not filled out. "
    } elseif ($null -eq $address) {
        Write-Error "No Address delivered. "
    } else {
        $Method  = "Delete"
        Invoke-RestMethod -Uri "$($uri)/routes/$($address)" -Method $Method
    }
}