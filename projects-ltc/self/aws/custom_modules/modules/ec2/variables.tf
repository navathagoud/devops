variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for the EC2 instance"
  type        = string
}

variable "key_name" {
  description = "Key pair name for the EC2 instance"
  type        = string
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
}

variable "security_groups" {
  description = "The security group ids from vpc"
  type        = list(string)
}