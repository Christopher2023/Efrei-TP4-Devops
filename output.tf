output "tls_private_key" {
  value = tls_private_key.rsa-4096-example.private_key_pem
  sensitive = true
}
output "public_ip_adress" {
  value = azurerm_linux_virtual_machine.example.public_ip_address
}