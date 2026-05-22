provider "aws" {
  region = "ap-south-1"
}
terraform {
  backend "s3" {
    bucket         = "bipin-tfstate-bucket-123"
    key            = "3tier/prod/terraform.tfstate"
    region         = "ap-south-1"
    use_lockfile = true
    # dynamodb_table = "dynamodb-terraform-state-lock"
    encrypt        = true
  }
}
