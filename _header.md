![Coalfire](coalfire_logo.png)

# Google Cloud Project Terraform Module

## Description

This Google Cloud Project module creates the projects and enables services. Coalfire has tested this module with Terraform version 1.5.0 and the Hashicorp Google provider versions 4.70 - 5.0.

FedRAMP Compliance: High 

### Usage

```
module "project" {
  source = "github.com/Coalfire-CF/terraform-gcp-project"

  name            = "project-name"
  project_id      = "project-id"
  folder_id       = "your-folder-id"
  billing_account = "your-billing-account"
  services        = ["compute.googleapis.com"]
}
```
