output "autoscaling_group_arn" {
  value = module.asg.autoscaling_group_arn
}

output "autoscaling_group_availability_zones" {
  value = module.asg.autoscaling_group_availability_zones
}

output "autoscaling_group_default_cooldown" {
  value = module.asg.autoscaling_group_default_cooldown
}

output "autoscaling_group_desired_capacity" {
  value = module.asg.autoscaling_group_desired_capacity
}

output "autoscaling_group_health_check_grace_period" {
  value = module.asg.autoscaling_group_health_check_grace_period
}

output "autoscaling_group_health_check_type" {
  value = module.asg.autoscaling_group_health_check_type
}

output "autoscaling_group_id" {
  value = module.asg.autoscaling_group_id
}

output "autoscaling_group_load_balancers" {
  value = module.asg.autoscaling_group_load_balancers
}

output "autoscaling_group_max_size" {
  value = module.asg.autoscaling_group_max_size
}
output "autoscaling_group_min_size" {
  value = module.asg.autoscaling_group_min_size
}

output "autoscaling_group_name" {
  value = module.asg.autoscaling_group_name
}

output "autoscaling_group_target_group_arns" {
  value = module.asg.autoscaling_group_target_group_arns
}
output "autoscaling_group_vpc_zone_identifier" {
  value = module.asg.autoscaling_group_vpc_zone_identifier
}

output "autoscaling_schedule_arns" {
  value = module.asg.autoscaling_schedule_arns
}

output "launch_configuration_arn" {
  value = module.asg.launch_configuration_arn
}
output "launch_template_arn" {
  value = module.asg.launch_template_arn
}
output "launch_template_id" {
  value = module.asg.launch_template_id
}
output "launch_template_latest_version" {
  value = module.asg.launch_template_latest_version
}