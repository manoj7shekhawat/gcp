resource "google_filestore_instance" "instance" {
  for_each = var.filestore

  name     = each.value.name
  location = each.value.location
  tier     = each.value.tier

  file_shares {
    capacity_gb = each.value.file_shares.capacity_gb
    name        = each.value.file_shares.name
  }

  networks {
    network = var.network_name
    modes   = ["MODE_IPV4"]
  }
}