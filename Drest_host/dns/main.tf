resource "aws_route53_zone" "public" {
  name = "${replace(var.route53_public_dns_name, "/^.+?\\./", "")}."
}

resource "aws_route53_record" "public" {
  count = var.enable && var.route53_public_dns_name != "" ? 1 : 0

  zone_id = aws_route53_zone.public.zone_id
  name    = var.route53_public_dns_name
  type    = "A"

  alias {
    name                   = data.terraform_remote_state.drest_elb.outputs.elb_dns_name
    zone_id                = data.terraform_remote_state.drest_elb.outputs.elb_zone_id
    evaluate_target_health = false
  }
}

