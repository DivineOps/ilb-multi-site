IISConfiguration -nodeName "webServer-0" -webDeployPackage "https://github.com/DivineOps/ilb-multi-site/blob/master/website.zip?raw=true"

Start-DscConfiguration -Path .\IISConfiguration -Wait -Force -Verbose