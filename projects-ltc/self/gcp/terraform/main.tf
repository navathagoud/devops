provider "google" {
    project = "My-first-project"
    region  = "us-west1"
    zone    = "us-west1-b"
}

resource "google_compute_instance" "main" {
    name         = "test-vm-tf"
    machine_type = "e2-micro"

    network_interface {
        network = "test-vpc"
    }

    boot_disk {
        initialize_params {
            image = "Debian GNU/Linux 12 (bookworm)"
        }
    }
  
}