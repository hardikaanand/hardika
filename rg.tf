resource "azurerm_resource_group" "rg" {
  name     = vansh 
  location = "East US"


}

h
resource "azurerm_resource_group" "rg2" {
  name     = "vansh2"
  location = "East US"
=======
resource "azurerm _storage_account" "storage" {
  name                     = "vanshstorageaccount"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "Terraform"
  }

}