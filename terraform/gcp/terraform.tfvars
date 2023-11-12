gcloud_project = "m7shekhawat"

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