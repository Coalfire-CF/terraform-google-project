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
| [google_project.project](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project) | resource |
| [google_project_iam_audit_config.audit](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_audit_config) | resource |
| [google_project_service.management](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_service) | resource |
| [google_resource_manager_lien.delete_lien](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/resource_manager_lien) | resource |
| [random_id.suffix](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_create_network"></a> [auto\_create\_network](#input\_auto\_create\_network) | Controls whether the 'default' network exists on the project. | `bool` | n/a | yes |
| <a name="input_billing_account"></a> [billing\_account](#input\_billing\_account) | The ID of the billing account to associate projects with. | `string` | n/a | yes |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | Folder ID | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of project | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Project ID | `string` | n/a | yes |
| <a name="input_services"></a> [services](#input\_services) | APIs & Services to enable for the project. | `list(string)` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->