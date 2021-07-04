# Azure Resource Manager #

Templates in JSON format

Consists of a few JSON files:
* Deploy
* Parameters

The deploy file is where the action is. Within the deploy file there will be a schema and may need to be updated.

The intent of the deploy file is to remain static, alleviating configuration drift.

Variables block - watch for the `concat` function which is commonly used for generating naming

Each resource will have a resource type which corresponds with a specific API for the resource in question. 

Be kind and make use of comments via `"comments":` in the resource definition. This is specified prior to the the `"type":`

`az deployment group create <rg> --name <name> --parameters <parameter file>`

Can use the following to specify JSON file location

`--template-file <Path>` 
`--template-URI <URI/URL>`

ARM templates can be downloaded from the Azure Portal once a resource is created so that it can be automated.

Microsoft provides a variety of ARM templates that can be deployed. 

ARM Templates can also be executed via powershell!

ARM Templates can be linked and associated with other ARM templates. Linked templates reference a URI or relativePath property that refers to the other ARM templates. 

It is a common deployment pattern to have all the ARM templates in a git repo and create a storage account with a container where the repos are cloned and stored for the purposes of execution. 

[Linked ARM Templates] https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/deployment-tutorial-linked-template?tabs=azure-powershell
