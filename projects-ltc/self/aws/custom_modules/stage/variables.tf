variable "cidr_block" {
  description    = "CIDR block for VPC"
  type           = string
  default        = "10.3.0.0/16"

}

variable "vpc_name" {
  description   = "Name of vpc"
  type          = string
  default       = "stage-vpc"
}

variable "subnet_cidr_blocks" {
  description  = "List of subnet_cidr_blocks"
  type         = list(string)
  default      = ["10.3.3.0/24", "10.3.4.0/24"]
}

variable "availability_zones" {
  description  = "List of availability_zones"
  type         = list(string)
  default      = ["eu-north-1a", "eu-north-1b"]
}

variable "ami" {
  description  = "Ami ID for EC2 instance"
  type         = string
  default      = "ami-0c0e147c706360bd7"
}

variable "instance_type" {
  description     = "ec2 instance type"
  type            = string
  default         = "t3.micro"
}

variable "key_name" {
  description     = "key pair for ec2 instance"
  type            = string
  default         = "ltc_training"
}

variable "instance_name" {
  description     = "Name of ec2 instance"
  type            = string
  default         = "stage-ec2-instance"
}
variable "name" {
  description     = "common name for env"
  type            = string
  default         = "stage"
}


