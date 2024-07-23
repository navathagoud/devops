variable "instance_name" {
  description = "The name of the VM instance"
  type        = string
}

variable "machine_type" {
  description = "The machine type of the VM instance"
  type        = string
}

variable "zone" {
  description = "The zone where the VM instance will be created"
  type        = string
}

variable "disk_image" {
  description = "The disk image to use for the VM instance"
  type        = string
}

variable "network" {
  description = "The VPC network to attach the VM instance to"
  type        = string
}

variable "subnetwork" {
  description = "The subnetwork to attach the VM instance to"
  type        = string
}

variable "tags" {
  description = "The tags to apply to the VM instance"
  type        = list(string)
  default     = []
}