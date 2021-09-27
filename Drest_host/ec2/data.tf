data "aws_ami" "latest_centos" {
  most_recent = true
  name_regex  = "tio_base_centos7-*"
  owners      = ["self"]
}