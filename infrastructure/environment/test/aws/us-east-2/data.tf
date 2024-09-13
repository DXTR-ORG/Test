data "aws_caller_identity" "current" {
}

data "aws_region" "current" {
}

# This data block retrieves information about the AWS account and the IAM user or role whose credentials are used by Terraform.
data "aws_caller_identity" "current" {
  # No configuration necessary, just invoking the data source.
}

# This data block retrieves the AWS region configured in the provider.
data "aws_region" "current" {
  # No configuration necessary, just invoking the data source.
}