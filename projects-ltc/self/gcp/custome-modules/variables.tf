
variable "project_id" {
  description = "The GCP project ID"
  type        = string
  default     = "advance-totem-428319-n5"
}

variable "region" {
  description = "The GCP region"
  type        = string
  default     = "us-west1"
}

variable "network_name" {
  description = "The name of the VPC network"
  type        = string
#  default     = "my-vpc-network"           ### name it according to the environment
}

variable "subnet_name" {
  description = "The name of the subnetwork"
  type        = string
#  default     = "my-subnet"          ### name it according to the environment
}

variable "subnet_cidr" {
  description = "The CIDR range of the subnetwork"
  type        = string
#  default     = "10.0.0.0/24"
}

variable "instance_name" {
  description = "The name of the VM instance"
  type        = string
#  default     = "my-vm-instance"             ### name it according to the environment
}

variable "machine_type" {
  description = "The machine type of the VM instance"
  type        = string
  default     = "e2-micro"
}

variable "zone" {
  description = "The zone where the VM instance will be created"
  type        = string
  default     = "us-west1-a"
}

variable "disk_image" {
  description = "The disk image to use for the VM instance"
  type        = string
  default     = "debian-cloud/debian-12"
}

variable "instance_tags" {
  description = "The tags to apply to the VM instance"
  type        = list(string)
  default     = []
}

variable "firewall_name" {
  description = "The name of the firewall"
  type        = string
  default     = "firewall"
}



