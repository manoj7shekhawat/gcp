module "compute_engine" {
  source = "./../modules/compute_engine/vpc"

  vpc_network = var.vpc_network
}

module "filestore" {
  source = "./../modules/filestore"
  filestore    = var.filestore
  network_name = var.vpc_network
}