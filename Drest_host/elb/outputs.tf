output "elb_arn" {
  value = module.elb_http.this_elb_arn
}

output "elb_dns_name" {
  value = module.elb_http.this_elb_dns_name
}

output "elb_id" {
  value = module.elb_http.this_elb_id
}

output "elb_instances" {
  value = module.elb_http.this_elb_instances
}

output "elb_name" {
  value = module.elb_http.this_elb_name
}

output "elb_source_security_group_id" {
  value = module.elb_http.this_elb_source_security_group_id
}

output "elb_zone_id" {
  value = module.elb_http.this_elb_zone_id
}