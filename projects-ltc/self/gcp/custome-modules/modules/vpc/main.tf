resource "google_compute_network" "vpc_network" {
  name                    = var.network_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnetwork" {
  name          = var.subnet_name
  network       = google_compute_network.vpc_network.self_link
  ip_cidr_range = var.subnet_cidr
  region        = var.region
}

resource "google_compute_firewall" "rules" {
  name        = var.firewall_name
  network     = google_compute_network.vpc_network.self_link
  description = "Creates firewall rule targeting tagged instances"

  allow {
    protocol  = "tcp"
    ports     = ["80", "443","22"]
  }

  source_tags = ["web-server1"]
  source_ranges = ["0.0.0.0/0"]
}