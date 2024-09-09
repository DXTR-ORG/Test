data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

# This data source retrieves information about the AWS account, including the account ID, AWS user ID, and ARN.
# data "aws_caller_identity" "current" {}

# This data source retrieves the current AWS region in which Terraform is being executed.
# data "aws_region" "current" {}