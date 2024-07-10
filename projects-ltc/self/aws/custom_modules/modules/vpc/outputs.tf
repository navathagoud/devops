output "vpc_id_new" {
  value = aws_vpc.new_vpc.id
}

output "subnet_ids" {
  value = aws_subnet.new_subnet[*].id
}

output "security_group_ids" {
  value = aws_security_group.sg.id
}
