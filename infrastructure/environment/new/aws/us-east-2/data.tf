data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

# This data source retrieves information about the AWS account and user whose credentials are used to execute the terraform configuration.
# It provides useful identifying information about the account.
# - `data.aws_caller_identity.current` refers to the data being fetched about the caller identity.

# This data source fetches the AWS region in which the terraform configuration is being executed.
# - `data.aws_region.current` refers to the data being fetched about the current region.