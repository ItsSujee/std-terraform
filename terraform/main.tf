terraform {
  backend "gcs" {
  bucket  = "std-terraform"
  prefix  = "terraform.tfstate"
  }
}

provider "google" {
  project = var.project
  region  = var.region
}

//resource "google_project_iam_binding" "owner" {
//  project =  var.project
//  role    = "roles/owner"
//
//  members = [
//    "user:sujeethan.vigneswaran@gmail.com",
//    "serviceAccount:803285486364@cloudbuild.gserviceaccount.com"
//  ]
//}

module "gcs" {
  source = "./modules/gcs"
  region = var.region
}

module "iam" {
  source = "./modules/iam"
  project = var.project
}