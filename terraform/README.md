# 🚀 Azure Infrastructure Deployment with Terraform 🌐
## Overview 🌟
This project provides a Terraform configuration to deploy a server-based architecture on Azure. The infrastructure includes:

**A Virtual Network (VNet) with 2 public and 2 private subnets 🌍.**
An Azure Kubernetes Service (AKS) cluster to run your containerized application 🐳.
An Azure Application Gateway as a load balancer to expose your services to the internet ⚖️.
A Kubernetes deployment to deploy your containerized application on the AKS cluster 🎯.
---
## Folder Structure 📂
```bash
terraform/
├── modules/
│   ├── aks/
│   ├── app_gateway/
│   ├── k8s_deploy/
│   └── network/
├── main.tf
├── variables.tf
├── outputs.tf
└── providers.tf
```
```bash modules/```: Contains reusable modules for creating Azure resources like AKS, Network, Application Gateway, and Kubernetes deployment 🔄.
```bash main.tf```: The main Terraform configuration that links all modules together 🔗.
```bash variables.tf```: Defines the variables used in the Terraform configuration ⚙️.
```bash outputs.tf```: Specifies the output values that will be shown after deployment 🌈.
```bash providers.tf```: Contains the provider configuration for Azure ⚡.
---
## Prerequisites 🛠️
Before you begin, make sure you have:

Terraform 0.12+ installed 🧑‍💻.
An Azure account with sufficient privileges 🌐.
Azure CLI installed and authenticated, or Service Principal credentials for automated login 🔑.
---
## Setup Instructions 🚀
### 1. Clone the Repository 📥
Clone this repository to your local machine:
```bash
git clone <repository-url>
cd <repository-directory>
```
---
### 2. Configure Azure Credentials 🔐
Make sure your Azure credentials are properly configured. You can authenticate using Azure CLI:
```bash
az login
cd <repository-directory>
```
Alternatively, configure Service Principal credentials by setting the following environment variables:
```bash
export ARM_CLIENT_ID="<your-client-id>"
export ARM_CLIENT_SECRET="<your-client-secret>"
export ARM_SUBSCRIPTION_ID="<your-subscription-id>"
export ARM_TENANT_ID="<your-tenant-id>"
cd <repository-directory>
```
---
### 3. Initialize Terraform 🧰
Run the ```bashterraform init``` command to initialize the Terraform configuration and download the necessary providers:
```bash
terraform init
```
---
### 4. Plan the Deployment 🔍
Use the ```bashterraform plan``` command to see what changes Terraform will make to your infrastructure:
```bash
terraform plan
```
---
### 5. Apply the Terraform Plan 🛠️
Run the ```bashterraform apply``` command to create the resources in Azure. Terraform will prompt for confirmation—type yes to proceed:
```bash
terraform apply
```
---
### 6. Output 🌍
Once the deployment is complete, view the output values (e.g., IP address of the Application Gateway and Kubernetes service) by running:
```bash
terraform output
```
---
### 7. Destroy the Resources 🗑️
If you want to clean up and tear down the resources, use the following command:
```bash
terraform destroy
```
Confirm by typing ```bashyes```.
---
## Modules 🔨
## Network Module 🌐
This module creates an Azure Virtual Network (VNet) and 4 subnets: 2 public and 2 private. These subnets are used to deploy the resources securely.

## AKS Module 🏞️
This module creates an Azure Kubernetes Service (AKS) cluster to run your containerized applications. The AKS cluster is deployed within the private subnets.

## Application Gateway Module 🔄
This module creates an Azure Application Gateway, which acts as a load balancer in the public subnets to expose your AKS services to the internet.

## Kubernetes Deployment Module 🛠️
This module deploys your containerized application on the AKS cluster. It creates a Kubernetes Deployment and a Kubernetes Service of type LoadBalancer to expose the app to the internet.
---
## Outputs 📡
```bashapp_gateway_ip```: Public IP address of the Azure Application Gateway.
```bashservice_ip: Public IP address of the Kubernetes service that exposes the deployed application.
---
## Notes 💡
Make sure your container image is available in the Azure Container Registry (ACR) or any registry that your AKS cluster can access 🌍.
Adjust the node pool size, VM size, and other configurations based on your needs ⚙️.
---
## Contributing 🤝
Feel free to fork this repository and submit pull requests with improvements or new features! We welcome contributions to make this project even better 💻.
---
