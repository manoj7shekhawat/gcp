resource "google_storage_bucket" "bucket" {
  name          = var.bucket.name
  force_destroy = var.bucket.force_destroy
  location      = var.bucket.location
  storage_class = var.bucket.storage_class
  versioning {
    enabled = var.bucket.versioning.enabled
  }
}