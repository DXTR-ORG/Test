data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

# This block retrieves information about the AWS account associated with the provided credentials
data "aws_caller_identity" "current" {
  # No configuration options are required for this data source
}

# This block retrieves the current AWS region
data "aws_region" "current" {
  # No configuration options are required for this data source
}