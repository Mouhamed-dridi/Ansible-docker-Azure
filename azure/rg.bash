# Set Variables for VNet and Subnet
VNET_NAME="ansible"
VNET_ADDRESS_PREFIX="10.103.0.0/26"
SUBNET_NAME="sub1"
SUBNET_ADDRESS_PREFIX="10.103.0.0/27"

az group list --output table
