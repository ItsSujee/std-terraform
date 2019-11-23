resource "google_storage_bucket" "terraform_state_bucket" {
  name     = "std-terraform"
  location = var.region
}