#This works!
param (
    [string]$resourceGroupName = 'PSTest-rg',
    [string]$region = 'eastus'
)

az group create --name $resourceGroupName `
                --location $region

az network nsg create --name 'PS-nsg' `
                      --resource-group $resourceGroupName `
                      --location $region

az network nsg rule create --name 'PS-rule' `
                           --nsg-name 'PS-nsg' `
                           --access Allow `
                           --source-port-range 22 `
                           --resource-group $resourceGroupName `
                           --priority 100