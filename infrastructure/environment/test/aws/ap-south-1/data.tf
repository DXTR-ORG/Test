data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

# The aws_caller_identity data source retrieves information about the AWS account and the identity we're using to connect to AWS.
# The aws_region data source fetches the region in which the current provider is operating.