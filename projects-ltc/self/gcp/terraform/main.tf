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
        network = "default"
    }

    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-12"
        }
    }
  
}