module "compute_engine" {
  source = "./../modules/compute_engine/vpc"

  vpc_network = var.vpc_network
}