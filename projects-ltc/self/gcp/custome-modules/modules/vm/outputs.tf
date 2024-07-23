output "instance_name" {
  value = google_compute_instance.vm_instance.name
}

output "instance_self_link" {
  value = google_compute_instance.vm_instance.self_link
}

output "instance_public_ip" {
   value = google_compute_instance.vm_instance.network_interface[0].access_config[0].nat_ip
}