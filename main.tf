provider "aws" {
  region = "ap-southeast-2"
}

terraform {
  backend "s3" {
    bucket = "terraform-ed-zip1"
    key    = "state-file-key"
    region = "ap-southeast-2"
  }
}

module "streamingmodule" {
  source = "./infra_build"
}