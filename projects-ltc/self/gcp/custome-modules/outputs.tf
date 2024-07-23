output "vpc_network_name" {
  value = module.vpc.network_name
}

output "subnet_name" {
  value = module.vpc.subnet_name
}

output "vm_instance_name" {
  value = module.vm.instance_name
}

output "vm_instance_self_link" {
  value = module.vm.instance_self_link
}


output "instance_public_ip" {
  value = module.vm.instance_public_ip
}

output "firewall_name" {
  value = module.vpc.firewall_name
}
