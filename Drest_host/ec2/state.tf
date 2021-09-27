terraform {
  backend "s3" {
    bucket  = "drest-s3"
    key     = "tfstate/ec2.tfstate"
    region  = "eu-west-1"
    profile = "aws-profile-nonprod"
  }
}