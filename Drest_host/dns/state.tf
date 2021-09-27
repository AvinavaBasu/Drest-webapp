terraform {
  backend "s3" {
    bucket  = "drest-s3"
    key     = "tfstate/dns.tfstate"
    region  = "eu-west-1"
    profile = "aws-bts-royaltylink-nonprod"
  }
}