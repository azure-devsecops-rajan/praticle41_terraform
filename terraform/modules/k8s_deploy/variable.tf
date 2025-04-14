variable "image_name" {
  description = "The container image name for deployment"
  type        = string
  default     = "<your-acr-name>.azurecr.io/my-app:latest"
}
