terraform {
  backend "s3" {
    bucket = "iac-bootcamp-2026-tfstate-bucket"
    key    = "modules/ec2/terraform.tfstate"
    region = "eu-central-1"
  }
}