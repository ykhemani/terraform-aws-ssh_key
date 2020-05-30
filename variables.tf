variable aws_region {
  type        = string
  description = "AWS Region in which to deploy our hashistack instance."
  default     = "us-west-2"
}

variable owner {
  type        = string
  description = "Label to identify owner, will be used for tagging resources that are provisioned."
}

variable ssh_keys {
  type        = map(string)
  description = "Mapping of ssh key name and ssh key."
  default     = {}
}
