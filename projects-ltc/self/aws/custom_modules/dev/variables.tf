variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "dev-vpc"
}

variable "subnet_cidr_blocks" {
  description = "List of subnet CIDR blocks"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["eu-north-1a", "eu-north-1b"]
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0c0e147c706360bd7"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Key pair name for the EC2 instance"
  type        = string
  default     = "ltc_training"
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
  default     = "dev-ec2-instance"
}

variable "name" {
  description = "commonn name for env"
  type        = string
  default     = "dev"
}
