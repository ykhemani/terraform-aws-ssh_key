variable "region" {
  type        = string
  description = "AWS Region in which to deploy our hashistack instance."
  default     = "us-east-1"
}

variable "ssh_keys" {
  type        = map(string)
  description = "Mapping of ssh key name and ssh key."
  default     = {}
}
