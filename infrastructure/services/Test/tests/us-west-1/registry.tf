variable "region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "us-west-2"
}

provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "example" {
  bucket = "my-unique-bucket-name"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    Name        = "ExampleInstance"
    Environment = "Dev"
  }
}

output "bucket_id" {
  description = "The ID of the S3 bucket"
  value       = aws_s3_bucket.example.id
}

output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.example.id
}