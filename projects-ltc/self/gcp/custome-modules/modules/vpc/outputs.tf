output "network_name" {
  value = google_compute_network.vpc_network.name
}

output "subnet_name" {
  value = google_compute_subnetwork.subnetwork.name
}

output "firewall_name" {
  value = google_compute_firewall.rules.name
}
