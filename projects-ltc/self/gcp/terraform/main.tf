provider "google" {
##    credentials = "../sa-creds.json"
    project = "advance-totem-428319-n5"
    region  = "us-west1"
    zone    = "us-west1-a"

    
}


resource "google_compute_instance" "main" {
    name         = "test-vm-tf"
    machine_type = "e2-micro"
    tags         = ["web-server"]
    allow_stopping_for_update = true  # Allow stopping the instance for updates

    network_interface {
        network = google_compute_network.my_vpc_network.self_link
        subnetwork = google_compute_subnetwork.public_subnet.name
        
        access_config {
      // Ephemeral public IP
      }
    }

    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-12"
        }
    }
  
}

output "instance_public_ip" {
  value = google_compute_instance.main.network_interface[0].access_config[0].nat_ip
}
