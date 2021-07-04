# VM Creation #

#### Login to Azure ####

az login
---
#### Create a Resource Group ####

az group create --name <myResourceGroupVM> --location <eastus>

az group list
---
#### Create a VNET ####

az network vnet create --resource-group <rg> --name <vnet name> --address-prefixes <prefix>

#### Create a Subnet in the VNET ####

az network vnet subnet create --resource-group <rg> --vnet-name <vnet name> --name <subnet name> --address-prefixes <subnet>
---
#### List current OS images available ####

az vm image list --output table

#### List available VM sizes ####

az vm list-sizes -l <location> --output table

#### Create Virtual Machine #### 

az vm create --resource-group RG --name LinuxVM --image Centos --size Standard_B1ms --vnet-name RG-vnet --subnet SUBNET1 --admin-username admin --generate-ssh-keys

az vm create --resource-group RG --name WinLinux --image MicrosoftWindowsServer:WindowsServer:2019-Datacenter:latest --vnet-name RG-vnet --subnet SUBNET1 --admin-username admin --admin-password password!