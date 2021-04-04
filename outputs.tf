output "ssh_key" {
  value = {
    for item in aws_key_pair.ssh:
      item.key_name => item.public_key
  }
}
