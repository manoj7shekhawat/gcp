output "vpc_network" {
  value = module.base.vpc_network
}

output "filestore" {
  value = module.base.filestore
}

output "gke" {
  value = module.base.gke.id
}

output "service_account" {
  value = module.base.service_account
}