# Retrieve information about the AWS account
data "aws_caller_identity" "current" {}

# Retrieve the current AWS region
data "aws_region" "current" {}