#region backend

provider "aws" {
  region = "eu-west-1"
  default_tags {
    tags = {
      Environment = "OIDC"
      Name        = "Fii-practic-2025"
      Managed_by  = "Terraform"
    }
  }
}

# terraform {
#   required_version = "~> 1.10"
#   backend "s3" {
#     bucket       = "s3-terraform-state-fii-practic-2025hjkl"
#     key          = "terraform.tfstate"
#     region       = "eu-west-1"
#     encrypt      = true
#     use_lockfile = true
#   }
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 5.0"
#     }
#   }
# }

#endregion backend

#region S3

module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "4.6.0"
  bucket  = "s3-terraform-state-fii-practic-2025wwwwerrwdd"

}

#endregion S3
