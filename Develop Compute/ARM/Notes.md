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