data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

# The aws_caller_identity data source retrieves the AWS account ID, user ID, and ARN of the current caller.
# The aws_region data source retrieves the name of the current region.