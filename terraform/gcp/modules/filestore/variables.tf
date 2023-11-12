variable "filestore" {
  type = map(object({
    name     = string
    location = string
    tier     = string

    file_shares = object({
      capacity_gb = number
      name        = string
    })
  }))
}

variable "network_name" {
  type = string
}