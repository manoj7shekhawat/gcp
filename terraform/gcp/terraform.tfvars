gcloud_project = "m7shekhawat"

region = "europe-north1"

location = "europe-north1-a"

vpc_network = "vpc-network"

filestore = {
  one = {
    name     = "filestore-one"
    location = "europe-north1-a" # North
    tier     = "BASIC_HDD"

    file_shares = {
      capacity_gb = 1024
      name        = "file_share_one"
    }
  },
  two = {
    name     = "filestore-two"
    location = "europe-central2-a" # Central
    tier     = "BASIC_HDD"

    file_shares = {
      capacity_gb = 1024
      name        = "file_share_two"
    }
  }
}

service_account = {
  name = "Manoj Shekhawat"
  account_id = "mshekhawat"
  description = "Manoj Shekhawat service account"
}

gke = {
  name               = "mshekhawat-gke"
  initial_node_count = 1
}