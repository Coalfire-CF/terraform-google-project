/*************************************************
  Create projects and enable services
*************************************************/

# Management

resource "random_id" "suffix" {
  byte_length = 2
}

resource "google_project" "project" {
  name            = var.name
  project_id      = "${var.project_id}-${random_id.suffix.hex}"
  folder_id       = var.folder_id
  billing_account = var.billing_account
  auto_create_network = var.auto_create_network
}

resource "google_project_service" "management" {
  for_each = toset(var.services)

  project = google_project.project.id
  service = each.value
}

resource "google_resource_manager_lien" "delete_lien" {
  parent       = "projects/${google_project.project.number}"
  restrictions = ["resourcemanager.projects.delete"]
  origin       = google_project.project.project_id
  reason       = "This project is important"
}

resource "google_project_iam_audit_config" "audit" {
  project = google_project.project.id
  service = "allServices"

  dynamic "audit_log_config" {
    for_each = toset(["DATA_READ", "DATA_WRITE", "ADMIN_READ"])
    content {
      log_type = audit_log_config.key
    }
  }
}