# #region vpc

# module "vpc" {

#   source  = "terraform-aws-modules/vpc/aws"
#   version = "5.0.0"

#   name = "${var.org}-2025"
#   cidr = var.vpc_cidr

#   azs             = var.azs
#   private_subnets = [for k, v in var.azs : cidrsubnet(var.vpc_cidr, 8, k)]
#   public_subnets  = [for k, v in var.azs : cidrsubnet(var.vpc_cidr, 8, k + 4)]

#   private_subnet_names = [for i in range(length(var.azs)) : "Private Subnet ${i + 1}"]

#   manage_default_network_acl    = false
#   manage_default_route_table    = false
#   manage_default_security_group = false
# }

# #endregion vpc

# # ✓ VPC
