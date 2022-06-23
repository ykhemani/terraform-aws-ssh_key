terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  required_version = ">= 0.13"
}

locals {
  tags = merge(
    var.global_tags,
    var.local_tags
  )
}

provider "aws" {
  region = var.region
  default_tags {
    tags = local.tags
  }
}

# create ssh key pair
resource "aws_key_pair" "ssh" {
  for_each   = var.ssh_keys
  key_name   = each.key
  public_key = each.value
}
