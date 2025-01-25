# Create Virtual Network with Subnet
az network vnet create \
    --resource-group $RESOURCE_GROUP \
    --name $VNET_NAME \
    --address-prefix $VNET_ADDRESS_PREFIX \
    --subnet-name $SUBNET_NAME \
    --subnet-prefix $SUBNET_ADDRESS_PREFIX






az network vnet list --resource-group $RESOURCE_GROUP --output table

