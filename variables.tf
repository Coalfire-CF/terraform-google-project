variable "project_prefix" {
  description = "Prefix for projects."
  type        = string
  default     = "prj"
}

variable "management_folder_id" {
  description = "Folder id for management"
  type        = string
}

variable "networking_folder_id" {
  description = "Folder id for networking"
  type        = string
}

variable "billing_account" {
  description = "The ID of the billing account to associate projects with."
  type        = string
}

variable "management_services" {
  description = "APIs & Services to enable for management project."
  type        = list(string)
}

variable "networking_services" {
  description = "APIs & Services to enable for networking project."
  type        = list(string)
}