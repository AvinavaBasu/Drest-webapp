module "elb_http" {
  source  = "terraform-aws-modules/elb/aws"
  version = "~> 2.0"

  name = "drest-elb"

  subnets         = [var.subnet_id]
  security_groups = [var.security_group]
  internal        = false

  listener = [
    {
      instance_port     = 80  
      instance_protocol = "HTTP"
      lb_port           = 80
      lb_protocol       = "HTTP"
    },
    {
      instance_port     = 443
      instance_protocol = "http"
      lb_port           = 443
      lb_protocol       = "http"
    #ssl_certificate_id = "arn:aws:acm:eu-west-1:235367859451:certificate/6c270328-2cd5-4b2d-8dfd-ae8d0004ad31"
    },
  ]

  health_check = {
    target              = "TCP:443"
    interval            = 30
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 5
  }

  access_logs = {
    bucket = "drest-access-logs-bucket"
  }

  // ELB attachments
  number_of_instances = 1
  instances           = [data.terraform_remote_state.drest_instance.outputs.ec2_instance_id]

  tags = {
    Owner       = "user"
    Environment = "dev"
  }
}