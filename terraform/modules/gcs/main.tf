resource "google_storage_bucket" "terraform_state_bucket" {
  name     = "std-terraform"
  location = var.region
}

resource "google_storage_bucket" "test_bucket" {
  name     = "test-bucket-svdjkbkvdsvnlflwjfclisdncvlisncvl5678909876789765"
  location = var.region
}