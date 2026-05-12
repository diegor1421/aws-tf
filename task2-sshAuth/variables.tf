variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "ssh_key" {
  description = "Provides custom public SSH key."
  type        = string
}

variable "aws_keypair_name" {
  description = "Name for the SSH Key pair"
  type        = string
}

variable "aws_instance_name" {
  description = "Ec2 Instance name"
  type        = string
}

variable "local_tags" {
  description = "local resource tags"
  type        = map(string)
}