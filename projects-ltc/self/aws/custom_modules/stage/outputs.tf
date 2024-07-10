output "instance_public_ip_stage" {
  value = module.ec2.instance_public_ip
}
output "vpc_id_stage" {
  value = module.vpc.vpc_id_new
}

output "subnet_ids_stage" {
  value = module.vpc.subnet_ids
}

output "security_group_ids_stage" {
  value = module.vpc.security_group_ids
}


output "instance_id_stage" {
  value = module.ec2.instance_id
}