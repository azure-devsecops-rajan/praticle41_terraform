resource "azurerm_resource_group" "rg" {
  name     = "my-resource-group"
  location = "East US"
}

module "network" {
  source              = "./modules/network"
  resource_group_name = azurerm_resource_group.rg.name
}

module "aks" {
  source              = "./modules/aks"
  resource_group_name = azurerm_resource_group.rg.name
  vnet_id             = module.network.vnet_id
}

module "app_gateway" {
  source              = "./modules/app_gateway"
  resource_group_name = azurerm_resource_group.rg.name
}

module "k8s_deploy" {
  source              = "./modules/k8s_deploy"
  aks_cluster_id      = module.aks.aks_cluster_id
}
