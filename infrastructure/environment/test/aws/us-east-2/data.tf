data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

# This data source returns the Identity information of the AWS account this provider is configured with.
data "aws_caller_identity" "current" {}

# This data source returns the region configured in the provider.
data "aws_region" "current" {}