resource "azurerm_network_interface" "example" {
  name                = "devops-20180532"
  location            = data.azurerm_resource_group.tp4.location
  resource_group_name = data.azurerm_resource_group.tp4.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.tp4.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_public_ip" "example" {
  name                = "devops-20180532"
  resource_group_name = data.azurerm_resource_group.tp4.name
  location            = data.azurerm_resource_group.tp4.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}