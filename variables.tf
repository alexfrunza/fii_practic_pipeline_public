variable "azs" {
  type        = list(string)
  description = "Availability zones for the region"
  default     = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
}

variable "org" {
  type        = string
  description = "The organization, short name"
  default     = "FIIpractic"
}

variable "ami" {
  type        = string
  description = "The AMI ID for the instance"
  default     = "ami-01ff9fc7721895c6b"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}
