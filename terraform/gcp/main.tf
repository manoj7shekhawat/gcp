module "base" {
  source = "./base"
  vpc_network = var.vpc_network
  filestore   = var.filestore
}