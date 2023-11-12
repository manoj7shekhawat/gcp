resource "google_service_account" "service_account" {
  account_id   = var.service_account.account_id
  display_name = var.service_account.name
  description  = var.service_account.description
}

resource "google_container_cluster" "gke" {
  name               = var.gke.name
  location           = var.location
  initial_node_count = var.gke.initial_node_count

  network = var.network_name

  node_config {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    service_account = google_service_account.service_account.email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
    labels = {
      env = "test"
    }
    tags = ["env", "test"]
  }
  timeouts {
    create = "30m"
    update = "40m"
  }
  addons_config {
    gcp_filestore_csi_driver_config {
      enabled = true
    }
  }
}