module "compute_engine" {
  source = "./../modules/compute_engine/vpc"

  vpc_network = var.vpc_network
}

module "filestore" {
  source = "./../modules/filestore"

  filestore    = var.filestore
  network_name = module.compute_engine.vpc_network.name
}

module "gke" {
  source = "./../modules/gke"

  gke             = var.gke
  location        = var.location
  network_name    = module.compute_engine.vpc_network.name
  service_account = var.service_account
}