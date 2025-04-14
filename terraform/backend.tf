terraform {
  backend "azurerm" {
    resource_group_name   = "my-backend-rg"
    storage_account_name  = "mystorageaccount"
    container_name        = "mycontainer"
    key                   = "terraform.tfstate"
  }
}
