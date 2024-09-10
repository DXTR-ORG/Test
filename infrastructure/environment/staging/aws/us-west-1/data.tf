# Data source to get information about the AWS caller identity
data "aws_caller_identity" "current" {}

# Data source to get the current AWS region
data "aws_region" "current" {}