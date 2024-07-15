## this configuration file is to to create vpc in gcp.
#provider "google" {
#  credentials = file("advance-totem-428319-n5-902bb284809c.json")
#  project = "advance-totem-428319-n5"
#  region  = us-west1
#}

resource "google_compute_network" "my_vpc_network" {
  name                    = "my-vpc-network"
  auto_create_subnetworks = "false"
  routing_mode            = "GLOBAL"
  description             = "This is a vpc network"
  mtu                     = 1460
}

# Create a public subnet
resource "google_compute_subnetwork" "public_subnet" {
  name          = "public-subnet"
  region        = "us-west1"
  network       = google_compute_network.my_vpc_network.self_link
  ip_cidr_range = "10.0.1.0/24"  
  depends_on    = [google_compute_network.my_vpc_network]
}

# Create a private subnet
resource "google_compute_subnetwork" "private_subnet" {
  name                     = "private-subnet"
  region                   = "us-west1"
  network                  = google_compute_network.my_vpc_network.self_link
  ip_cidr_range            = "10.0.2.0/24" 
  private_ip_google_access = true  # Allows private Google access for instances in this subnet
  depends_on               = [google_compute_network.my_vpc_network]
}

resource "google_compute_firewall" "rules" {
  name        = "my-firewall-rule"
  network     = "my-vpc-network"
  description = "Creates firewall rule targeting tagged instances"

  allow {
    protocol  = "tcp"
    ports     = ["80", "443","22"]
  }

  source_tags = ["web-server"]
}