resource "google_project_iam_binding" "editor" {
  project =  var.project
  role    = "roles/editor"

  members = [
    "user:test@gmail.com"
  ]
}

