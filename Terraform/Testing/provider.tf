provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {}
  required_version = "2.4.0"
}