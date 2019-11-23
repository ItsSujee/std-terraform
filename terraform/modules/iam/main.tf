resource "google_project_iam_binding" "editor" {
  project =  var.project
  role    = "roles/editor"

  members = [
    "serviceAccount:service-803285486364@containerregistry.iam.gserviceaccount.com"
  ]
}

resource "google_project_iam_binding" "cloud_source_repo_sa" {
  project =  var.project
  role    = "roles/source.admin"

  members = [
    "service-803285486364@sourcerepo-service-accounts.iam.gserviceaccount.com"
  ]
}
