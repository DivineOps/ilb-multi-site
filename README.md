# Create 2 Virtual Machines with multiple functional websites under a Load balancer

This template allows you to create 2 Virtual Machines with 2 websites under a Load balancer, and uses PowerShell DSC to deploy 2 simple IIS  websites on ports 80 and 81.
<br />
This template deploys 2 web server VMs in an Availability Set using Managed Disk. The VMs are deployed into a new/existing Virtual Network and Subnet, and protected by a Network Security Group with an "allow" rule for TCP on port 80-81. The template also deploys 2 Public IP addresses attached to the Load Balancer, and configures the load balancing rules and probes for both sites. The template also deploys a Storage Account for VM diagnostics.
<br />

## PowerShell DSC Extension
If you are making changes to the DSC configuration, please keep in mind that the included configuration requires installation of two additional modules from PS Gallery. Since the modules cannot be installed during the DSC run, you will need to create a DSC zip including the modules on the development machine. To do so, use the following PowerShell cmdlet:
```
Publish-AzureVMDscConfiguration -ConfigurationPath .\webServerMultiSiteDSC.ps1 -ConfigurationArchivePath webServerMultiSiteDSC.zip -Force
```
This repository includes both the original DSC ps1 file, and the resulting zip that is being deployed by the template. 
<hr />
### Deploy the Template

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FDivineOps%2Filb-multi-site%2Fmaster%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2FDivineOps%2Filb-multi-site%2Fmaster%2Fazuredeploy.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>
