data "terraform_remote_state" "drest_instance" {
  backend = "s3"

  config = {
    bucket  = "drest-s3"
    key     = "tfstate/ec2.tfstate"
    region  = "eu-west-1"
    profile = "aws-bts-royaltylink-nonprod"
  }
}