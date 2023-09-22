variable "name" {
  description = "Name of project"
  type        = string
}

variable "project_id" {
  description = "Project ID"
  type        = string
}

variable "folder_id" {
  description = "Folder ID"
  type        = string
}

variable "billing_account" {
  description = "The ID of the billing account to associate projects with."
  type        = string
}

variable "services" {
  description = "APIs & Services to enable for the project."
  type        = list(string)
}

variable "auto_create_network" {
  description = "Controls whether the 'default' network exists on the project."
  type        = bool
}