variable "route53_public_dns_name" {
  description = "If set, the ELB will be assigned this public DNS name via Route53."
  default     = ""
}
variable aws_region {}
variable aws_profile {}
variable enable {}