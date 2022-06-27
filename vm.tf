
resource "azurerm_linux_virtual_machine" "example" {
  name                = "devops-20180532"
  resource_group_name = "devops-TP2"
  location            = "france central"
  size                = "Standard_D2s_v3"
  admin_username      = "adminuser"
  admin_password      = "Password1234!"
  disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.example.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
}