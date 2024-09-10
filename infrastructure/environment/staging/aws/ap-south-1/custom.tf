# Terraform configuration for AWS resources

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "example-bucket-terraform"
  acl    = "private"

  tags = {
    Name        = "example_bucket"
    Environment = "Dev"
  }
}