output "service_account" {
  value = google_service_account.service_account
}

output "gke" {
  value = google_container_cluster.gke
}