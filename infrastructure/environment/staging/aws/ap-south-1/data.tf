data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

# Retrieves the AWS account ID, user ID, and ARN of the AWS account being used
data "aws_caller_identity" "current" {}

# Retrieves the AWS region configured in the provider
data "aws_region" "current" {}