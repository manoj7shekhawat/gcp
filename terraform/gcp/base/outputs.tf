output "vpc_network" {
  value = module.compute_engine.vpc_network
}

output "filestore" {
  value = module.filestore.google_filestore_instance
}

output "service_account" {
  value = module.gke.service_account
}

output "gke" {
  value = module.gke.gke
}