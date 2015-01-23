#psake build script
Task Default -Depends HelloWorld
Task HelloWorld {
        Write-Host "Building...."
}