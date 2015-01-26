# What #
Powershell library for the Citrix NetScaler ADC. This library uses the Nitro REST API and has no other dependencies besides Powershell v3. Currently  tested against NS10.1: Build 119.7.nc and NS10.5: Build 54.9.nc. 

# Why #
Deployment Automation....

# How #
Examples, Octopus ...

  .\NS-UpdateService.ps1 -NSAddress 1.2.3.4 -NSUserName john -NSPassword dummy1 -Action disable -ServiceName staging

# Status #
Work in progress. For the intended use of this library, it will result in a step template for Octopus Deploy on [library.octopusdeploy.com](http://library.octopusdeploy.com) and a nupkg on nuget.org.

## Feature progress ##
- Enable/Disable Load Balancing Services: done
- Get list of services in Load Balancing Virtual Server: todo
- Get Status of Load Balancing Service/Virtual Server: todo

[![Build status](https://ci.appveyor.com/api/projects/status/r60fxltqu1w0k6ar?svg=true)](https://ci.appveyor.com/project/jnus/netscalerpslib)
