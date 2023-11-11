gcloud_project = "m7shekhawat"

bucket = {
  name          = "mshekhawat"
  force_destroy = true
  location      = "europe-north1"
  storage_class = "STANDARD"
  versioning = {
    enabled = true
  }
}