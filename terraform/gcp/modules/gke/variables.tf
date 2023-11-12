variable "service_account" {
  type = object({
    name        = string
    account_id  = string
    description = string
  })
}

variable "location" {
  type = string
}

variable "network_name" {
  type = string
}

variable "gke" {
  type = object({
    name               = string
    initial_node_count = number
  })
}