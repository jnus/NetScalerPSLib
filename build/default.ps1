$MyDir = Split-Path $MyInvocation.MyCommand.Definition

Task Default -Depends HelloWorld
Task HelloWorld {
        Write-Host "Building...."
}

