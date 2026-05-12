resource "aws_key_pair" "deployer" {
  key_name   = var.aws_keypair_name
  public_key = var.ssh_key
  tags = merge(
    var.local_tags,
    {
      Name = var.aws_keypair_name
    }
  )
}