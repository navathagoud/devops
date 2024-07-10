resource "aws_instance" "new_ec2" {
  ami             = var.ami
  instance_type   = var.instance_type
  subnet_id       = var.subnet_id
  key_name        = var.key_name
  vpc_security_group_ids = var.security_groups

  tags = {
    Name = var.instance_name
  }
}
