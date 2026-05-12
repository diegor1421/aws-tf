variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR Block"
  type        = string
}

variable "subnets_config" {
  type        = map(string)
  description = "VPC AZ Subnets CIDR Blocks"
}
