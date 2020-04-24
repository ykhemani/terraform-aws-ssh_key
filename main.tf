provider "aws" {
  region = var.aws_region
}

# create ssh key pair
resource "aws_key_pair" "ssh" {
  key_name   = var.ssh_key_name
  public_key = var.ssh_public_key
  tags = {
    Owner = var.owner
  }
}
