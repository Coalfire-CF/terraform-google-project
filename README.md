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
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.5.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 4.70, < 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | >= 4.70, < 5.0 |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_project.management](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project) | resource |
| [google_project.networking](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project) | resource |
| [google_project_service.management](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_service) | resource |
| [google_project_service.networking](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_service) | resource |
| [google_resource_manager_lien.management](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/resource_manager_lien) | resource |
| [google_resource_manager_lien.networking](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/resource_manager_lien) | resource |
| [random_id.suffix_management](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id) | resource |
| [random_id.suffix_networking](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_billing_account"></a> [billing\_account](#input\_billing\_account) | The ID of the billing account to associate projects with. | `string` | n/a | yes |
| <a name="input_management_folder_id"></a> [management\_folder\_id](#input\_management\_folder\_id) | Folder id for management | `string` | n/a | yes |
| <a name="input_management_services"></a> [management\_services](#input\_management\_services) | APIs & Services to enable for management project. | `list(string)` | n/a | yes |
| <a name="input_networking_folder_id"></a> [networking\_folder\_id](#input\_networking\_folder\_id) | Folder id for networking | `string` | n/a | yes |
| <a name="input_networking_services"></a> [networking\_services](#input\_networking\_services) | APIs & Services to enable for networking project. | `list(string)` | n/a | yes |
| <a name="input_project_prefix"></a> [project\_prefix](#input\_project\_prefix) | Prefix for projects. | `string` | `"prj"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->