terraform {
  required_version = ">= 1.5.7"

  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.5.0"
    }
  }
}

provider "google" {
  project = var.gcloud_project
  region  = "europe-central2"
  zone    = "europe-central2-a"
}