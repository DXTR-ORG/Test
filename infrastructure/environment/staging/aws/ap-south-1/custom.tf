# This Terraform configuration creates an AWS EC2 instance in a specified region.
# The instance type, AMI ID, and tags can be customized as needed.

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-12345678" # Replace with a valid AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }
}