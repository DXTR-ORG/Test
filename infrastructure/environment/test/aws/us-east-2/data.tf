data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

# Data block to fetch information about the AWS identity used to execute this Terraform configuration.
# This data source returns details about the AWS account ID and the user or IAM role executing the operations.
data "aws_caller_identity" "current" {}

# Data block to fetch the current AWS region in which the operations will be executed.
# This data source returns the region name (e.g., "us-west-2") in which the AWS provider is operating.
data "aws_region" "current" {}