module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "drest-instance"

  ami                    = data.aws_ami.latest_centos.id
  instance_type          = var.instance_type
  key_name               = var.key_name
  monitoring             = true
  vpc_security_group_ids = [var.security_group]
  subnet_id              = var.subnet_id

  metadata_options = {
    http_tokens = "required"
  }

  tags = {
    Terraform   = "true"
    Environment = "drest"
  }
}