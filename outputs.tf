output "project_id" {
  value       = google_project.project.project_id
  description = "The project ID."
}

output "project_number" {
  value       = google_project.project.number
  description = "The numeric identifier of the project."
}
