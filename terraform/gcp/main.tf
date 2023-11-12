module "base" {
  source = "./base"

  gke             = var.gke
  location        = var.location
  filestore       = var.filestore
  vpc_network     = var.vpc_network
  service_account = var.service_account
}