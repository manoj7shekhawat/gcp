variable "gcloud_project" {
  type = string
}

variable "bucket" {
  type = object({
    name          = string
    location      = string
    force_destroy = bool
    storage_class = string

    versioning = object({
      enabled = bool
    })
  })
}