variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "VPC CIDR Block"
  type        = string
  default     = "10.10.0.0/16"
}

variable "subnets_config" {
  type = map(string)
description = "VPC AZ Subnets CIDR Blocks"
  default = {
    az-a = "10.10.1.0/24"
    az-b = "10.10.3.0/24"
    az-c = "10.10.5.0/24"
  }
}
