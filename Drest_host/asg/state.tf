terraform {
  backend "s3" {
    bucket  = "drest-s3"
    key     = "tfstate/asg.tfstate"
    region  = "eu-west-1"
    profile = "aws-profile-nonprod"
  }
}