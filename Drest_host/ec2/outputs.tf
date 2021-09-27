output "ec2_arm" {
  value = module.ec2_instance.arn
}

output "ec2_instance_id" {
  value = module.ec2_instance.id
}

output "ec2_instance_state" {
  value = module.ec2_instance.instance_state
}

output "ec2_private_dns" {
  value = module.ec2_instance.private_dns
}

