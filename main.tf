terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  required_version = ">= 0.13"
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
    owner              = var.owner
    se-region          = var.se-region
    purpose            = var.purpose
    ttl                = var.ttl
    terraform          = "true"
    hc-internet-facing = var.hc-internet-facing
    creator            = var.creator
    customer           = var.customer
    tfe-workspace      = var.tfe-workspace
    lifecycle-action   = var.lifecycle-action
    config-as-code     = var.config-as-code
    repo               = var.repo
  }
}
