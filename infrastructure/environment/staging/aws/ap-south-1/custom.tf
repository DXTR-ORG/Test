# This is a Terraform configuration for deploying an AWS EC2 instance

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "my_instance" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  # Security group configuration
  vpc_security_group_ids = ["sg-abcdefgh"]

  # Key pair name for SSH access
  key_name = "my-key-pair"

  # Tags for the instance
  tags = {
    Name = "MyInstance"
    Env  = "Development"
  }
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # Allows all traffic
    cidr_blocks = ["0.0.0.0/0"]
  }
}

output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.my_instance.id
}

output "public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.my_instance.public_ip
}