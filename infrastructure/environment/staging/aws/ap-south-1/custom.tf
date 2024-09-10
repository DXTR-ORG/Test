resource "aws_eks_node_group" "node_group" {
  ami_type        = var.ami_type
  capacity_type   = var.spot_instances ? "SPOT" : "ON_DEMAND"
  cluster_name    = aws_eks_cluster.cluster.name
  depends_on = [
    aws_iam_role_policy_attachment.node_group_AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.node_group_AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.node_group_AmazonEC2ContainerRegistryReadOnly,
  ]
  disk_size       = length(var.node_launch_template) > 0 ? null : var.node_disk_size

  dynamic "launch_template" {
    for_each = length(aws_launch_template.eks_node) > 0 ? [1] : []
    content {
      id      = aws_launch_template.eks_node[0].id
      version = aws_launch_template.eks_node[0].latest_version
    }
  }

  instance_types = length(var.node_launch_template) > 0 ? [] : [var.node_instance_type]

  labels = {
    node_group_name = "opta-${var.layer_name}-default"
  }

  lifecycle {
    create_before_destroy = true
    ignore_changes        = [scaling_config[0].desired_size, "node_group_name", "subnet_ids"]
  }

  node_group_name = "opta-${var.layer_name}-default-${random_id.key_suffix.hex}"
  node_role_arn   = aws_iam_role.node_group.arn

  scaling_config {
    desired_size = max(var.min_nodes, 1)
    max_size     = var.max_nodes
    min_size     = var.min_nodes
  }

  subnet_ids = aws_eks_cluster.cluster.vpc_config[0].subnet_ids

  tags = {
    terraform = "true"
  }
}