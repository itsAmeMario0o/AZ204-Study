# This points to a fictious ARM deploy and ARM params file
# Modify this as appropriate to reflect the location of the deploy and params json
param (
    [string]$resourceGroupName = 'ARM-rg'
)

az deployment group create --resource-group $resourceGroupName `
                           --template-file ./azuredeploy.json `
                           --parameters ./azuredeploy.params.json