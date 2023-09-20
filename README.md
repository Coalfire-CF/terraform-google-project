# Google Cloud Project Terraform Module

## Description
This Google Cloud Project module creates the projects and enables services.

FedRAMP Compliance: High 

### Usage
```
module "project" {
    source = "github.com/Coalfire-CF/ACE-GCP-Project"

    management_folder_id = var.mgmt_folder_id
    networking_folder_id = var.network_folder_id

    billing_account = var.billing_account

    management_services = var.management_services
    networking_services = var.networking_services
}
```