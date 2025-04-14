resource "kubernetes_deployment" "app_deployment" {
  metadata {
    name = "my-app-deployment"
    labels = {
      app = "my-app"
    }
  }
  spec {
    replicas = 2
    selector {
      match_labels = {
        app = "my-app"
      }
    }
    template {
      metadata {
        labels = {
          app = "my-app"
        }
      }
      spec {
        container {
          name  = "my-app-container"
          image = "<your-acr-name>.azurecr.io/my-app:latest"
          ports {
            container_port = 80
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "app_service" {
  metadata {
    name = "my-app-service"
  }
  spec {
    selector = {
      app = "my-app"
    }
    port {
      port        = 80
      target_port = 80
    }
    type = "LoadBalancer"
  }
}
