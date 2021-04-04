terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  required_version = ">= 0.14"
}

provider "aws" {
  region     = var.aws_region
}

# create ssh key pair
resource "aws_key_pair" "ssh" {
  for_each   = var.ssh_keys
  key_name   = each.key
  public_key = each.value

  tags       = {
    Owner    = var.owner
  }
}
