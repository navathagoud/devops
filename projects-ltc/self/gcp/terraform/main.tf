provider "google" {
##    credentials = "../sa-creds.json"
    project = "advance-totem-428319-n5"
    region  = "us-west1"
    zone    = "us-west1-a"
}
resource "google_compute_instance" "main" {
    name         = "test-vm-tf"
    machine_type = "e2-micro"

    network_interface {
        network = google_compute_network.my_vpc_network.self_link
    }

    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-12"
        }
    }
  
}

network_interface {
    network       = google_compute_network.my_vpc_network.self_link
    access_config {
      // Ephemeral public IP
    }
  }
}

output "instance_public_ip" {
  value = google_compute_instance.google_compute_network.my_vpc_network.self_link.network_interface[0].access_config[0].nat_ip
}
