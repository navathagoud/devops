terraform {
  backend "gcs" {
    bucket               = "tfstate-bkp-gcs"
#    key                 = "terraform.tfstate"
    prefix               = "/workspaces"
#    workspaces {
#      prefix  = "tf-"
#    }           
#   workspace_key_prefix = "workspaces"   ##  "terraform/dev/state"
  }


  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.5"
    }
  }
}

provider "google" {
  project     = var.project_id
  region      = var.region
}

module "vpc" {
  source        = "./modules/vpc"
  network_name  = var.network_name
  subnet_name   = var.subnet_name
  subnet_cidr   = var.subnet_cidr
  firewall_name = var.firewall_name
  region        = var.region
}

module "vm" {
  source       = "./modules/vm"
  instance_name = var.instance_name
  machine_type  = var.machine_type
  zone          = var.zone
  disk_image    = var.disk_image
  network       = module.vpc.network_name
  subnetwork    = module.vpc.subnet_name
  tags          = var.instance_tags
}