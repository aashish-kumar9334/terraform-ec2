output "public_ips" {
  value = aws_instance.my_instance[*].public_ip
}

output "public_dns" {
  value = aws_instance.my_instance[*].public_dns
}
output "ec2_private_ip" {
    value = "aws_instance.my_instance(*).private_ip"
}