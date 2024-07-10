provider "aws" {
  region = "eu-north-1"
}

module "vpc" {
  source              = "../modules/vpc"
  cidr_block          = var.cidr_block
  vpc_name            = var.vpc_name
  name                = var.vpc_name
  subnet_cidr_blocks  = var.subnet_cidr_blocks
  availability_zones  = var.availability_zones
}

module "ec2" {
  source               = "../modules/ec2"
  ami                  = var.ami
  instance_type        = var.instance_type
  subnet_id            = element(module.vpc.subnet_ids, 0)
  key_name             = var.key_name
  instance_name        = var.instance_name
  security_groups      = [module.vpc.security_group_ids]
}