output "app_gateway_ip" {
  value = module.app_gateway.app_gateway_ip
}

output "service_ip" {
  value = module.k8s_deploy.service_ip
}
