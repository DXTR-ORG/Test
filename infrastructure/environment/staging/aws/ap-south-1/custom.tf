# Main virtual network resource in Azure
resource "azurerm_virtual_network" "main" {
  name                = "mainVnet"
  address_space       = ["10.0.0.0/16"]
  location            = "West US"
  resource_group_name = azurerm_resource_group.main.name
}

# Resource group
resource "azurerm_resource_group" "main" {
  name     = "main-resources"
  location = "West US"
}

# Subnet resource within the virtual network
resource "azurerm_subnet" "subnet" {
  name                 = "main-subnet"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.0.1.0/24"]
}

# Network security group
resource "azurerm_network_security_group" "nsg" {
  name                = "main-nsg"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
}

# Security group rule for allowing HTTP
resource "azurerm_network_security_rule" "http" {
  name                        = "allow-http"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "80"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.main.name
  network_security_group_name = azurerm_network_security_group.nsg.name
}

# Associate the network security group with the subnet
resource "azurerm_subnet_network_security_group_association" "subnet_nsg" {
  subnet_id                 = azurerm_subnet.subnet.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}

# Output the Virtual Network ID
output "vnet_id" {
  description = "ID of the main Virtual Network"
  value       = azurerm_virtual_network.main.id
}