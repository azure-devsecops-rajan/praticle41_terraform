resource "azurerm_public_ip" "app_gateway_ip" {
  name                = "my-app-gateway-ip"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Static"
}

resource "azurerm_application_gateway" "app_gateway" {
  name                = "my-app-gateway"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  frontend_ip_configuration {
    name                 = "app-gateway-ip"
    public_ip_address_id = azurerm_public_ip.app_gateway_ip.id
  }
  backend_address_pool {
    name = "backend-pool"
    backend_addresses {
      ip_address = azurerm_kubernetes_cluster.aks_cluster.kube_config[0].host
    }
  }

  gateway_ip_configuration {
    name      = "gateway-ip-config"
    subnet_id = azurerm_subnet.subnet_public_1.id
  }

  frontend_port {
    name = "http-port"
    port = 80
  }

  url_path_map {
    default_backend_address_pool_id = azurerm_application_gateway_backend_address_pool.backend_address_pool.id
    default_backend_http_settings_id = azurerm_application_gateway_backend_http_settings.backend_http_settings.id
  }

  backend_http_settings {
    name                    = "backend-http-settings"
    port                    = 80
    protocol                = "Http"
    cookie_based_affinity   = "Disabled"
    request_timeout {
      seconds = 20
    }
  }
}
