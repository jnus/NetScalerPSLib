# What #
Powershell library for the Citrix NetScaler ADC. This library uses the Nitro REST API and has no other dependencies besides Powershell v3. Currently  tested against NS10.1: Build 119.7.nc and NS10.5: Build 54.9.nc. 

# Why #
We needed to automate our manual NLB actions when deploying, minimize deployment time and minimize human errors when deploying. 

# How #
- Go to library.octopusdeploy.com and import the 'NetScaler ADC - Enable or Disable Service' template to Octopus Deploy
- Add the step to the process and select the option 'Configure a rolling deployment' and number of concurrent machines to install to. The step has no dependecies, hence each host can disable it self. If you name your LB services by host name, you can set the service parameter to #{Octopus.Machine.Hostname}.  
- fill out connection information and options such as graceful shutdown, timeout and action.

# Status [![Build status](https://ci.appveyor.com/api/projects/status/r60fxltqu1w0k6ar?svg=true)](https://ci.appveyor.com/project/jnus/netscalerpslib)
Work in progress. For the intended use of this library, it will result in a step template for Octopus Deploy on [library.octopusdeploy.com](http://library.octopusdeploy.com) and a nupkg on nuget.org.

## Feature progress ##
- Enable/Disable Load Balancing Services: done
- Octopus Step Template: done
- Get list of services in Load Balancing Virtual Server: todo
- Get Status of Load Balancing Service/Virtual Server: todo
