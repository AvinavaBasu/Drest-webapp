data "terraform_remote_state" "drest_elb" {
  backend = "s3"

  config = {
    bucket  = "drest-s3"
    key     = "tfstate/elb.tfstate"
    region  = "eu-west-1"
    profile = "aws-profile-nonprod"
  }
}