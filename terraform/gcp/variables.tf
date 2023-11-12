variable "gcloud_project" {
  type = string
}

variable "region" {
  type = string
}

variable "location" {
  type = string
}

variable "vpc_network" {
  type = any
}

variable "filestore" {
  type = any
}

variable "gke" {
  type = any
}

variable "service_account" {
  type = any
}