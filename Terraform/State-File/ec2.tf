resource "aws_instance" "sample" {
  ami           = "ami-0fc800a3140d9997d"
  instance_type = "t2.micro"
  tags = {
    Name = "statefile"
  }
}

provider "aws" {
  region = "us-east-1"
}
terraform {
 backend "s3" {
   bucket = "sandeep-jaina"
   key = "sample/terraform.tfstate"
   region = "us-east-1"
   dynamodb_table = "terraform_state"
 }
}
