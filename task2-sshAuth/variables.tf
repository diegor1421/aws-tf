variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "ssh_key" {
  description = "Provides custom public SSH key."
}

variable "aws_keypair_name" {
  description = "Name for the SSH Key pair"
}

variable "aws_instance_name" {
  description = "Ec2 Instance name"
}

variable "local_tags" {
  default     = {}
  description = "local resource tags"
  type        = map(string)
}