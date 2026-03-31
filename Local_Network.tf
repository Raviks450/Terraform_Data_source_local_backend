# network/main.tf
resource "google_compute_network" "vpc" {
  project                 = "qwiklabs-gcp-01-47a8a6ba4447"
  name                    = "my-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  project       = "qwiklabs-gcp-01-47a8a6ba4447"
  name          = "my-subnet"
  ip_cidr_range = "10.0.1.0/24"
  region        = "us-central1"
  network       = google_compute_network.vpc.id
}