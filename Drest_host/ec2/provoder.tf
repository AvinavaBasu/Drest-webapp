# provider "aws" {
#   profile = "aws-bts-royaltylink-nonprod"
#   region  = "eu-west-1"
#   version = "3.60.0"	
# }


provider "aws" {
  profile = var.aws_profile
  region  = var.aws_region
}