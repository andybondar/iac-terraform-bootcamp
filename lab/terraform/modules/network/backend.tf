terraform {
  backend "s3" {
    bucket = "iac-bootcamp-2026-tfstate-bucket"
    key    = "modules/network/terraform.tfstate"
    region = "eu-central-1"
  }
}