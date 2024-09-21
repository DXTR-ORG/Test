output "kms_account_key_id" {
  description = "The ID of the AWS KMS key."
  value       = aws_kms_key.key.id
}

resource "aws_subnet" "public_subnets" {
  count                   = local.create_vpc ? length(var.public_ipv4_cidr_blocks) : 0
  cidr_block              = var.public_ipv4_cidr_blocks[count.index]
  availability_zone_id    = data.aws_availability_zones.current.zone_ids[count.index]
  vpc_id                  = local.vpc_id
  map_public_ip_on_launch = true

  tags = {
    Name                                           = "opta-${var.layer_name}-public-${data.aws_availability_zones.current.zone_ids[count.index]}"
    "kubernetes.io/cluster/opta-${var.layer_name}" = "shared"
    type                                           = "public"
    terraform                                      = "true"
    "kubernetes.io/role/elb"                       = "1"
  }
}

variable "env_name" {
  description = "The environment name"
  type        = string
}