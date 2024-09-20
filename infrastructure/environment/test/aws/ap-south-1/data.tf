data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

# Fetch the AWS Account ID and ARN for the current user
data "aws_caller_identity" "current" {
}

# Fetch the current AWS region
data "aws_region" "current" {
}