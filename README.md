# Create 2 Virtual Machines with Multiple sites under a Load balancer and configures Load Balancing rules for the VMs

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FDivineOps%2Filb-multi-site%2Fmaster%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2FDivineOps%2Filb-multi-site%2Fmaster%2Fazuredeploy.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>

This template allows you to create 2 Virtual Machines with multiple sites under a Load balancer and configures a load balancing rule on Port 80-81. 
<br />
This template also deploys a Storage Account, Virtual Network, Public IP address, Availability Set and Network Interfaces.
In this template, we use the resource loops capability to create the network interfaces and virtual machines
<br />
Expanded on this quickstart template for an Azure Load Balancer and two web servers https://github.com/Azure/azure-quickstart-templates/edit/master/201-2-vms-loadbalancer-lbrules/ 

## PowerShell DSC Extension
The included DSC module requires installation of two additional modules from PS Gallery. Since the modules cannot be installed during the DSC run, we need to create a DSC zip including the modules on the development machine. To do so, we need to use the following PowerShell command:
```
Publish-AzureVMDscConfiguration -ConfigurationPath .\webServerMultiSiteDSC.ps1 -ConfigurationArchivePath webServerMultiSiteDSC.zip -Force
```
This repository includes both the original DSC ps1 file, and the resulting zip that is being deployed. 
