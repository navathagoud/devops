variable "network_name" {
  description = "The name of the VPC network"
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnetwork"
  type        = string
}

variable "subnet_cidr" {
  description = "The CIDR range of the subnetwork"
  type        = string
}

variable "region" {
  description = "The region where the subnetwork will be created"
  type        = string
}

variable "firewall_name" {
  description = "Name of the firewall rule"
  type = string
}