terraform {
  backend "s3" {
    bucket = "tfstate-bkp-s3"
    region = "eu-north-1"
  }
}