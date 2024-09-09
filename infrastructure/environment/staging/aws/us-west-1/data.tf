# Fetch information about the AWS account
data "aws_caller_identity" "current" {}

# Fetch information about the AWS region
data "aws_region" "current" {}