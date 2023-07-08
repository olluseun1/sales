module "provision_ec2_1" {
  source = "git::https://github.com/olluseun1/module.git"
  machine_name = "first machine"
 
}

module "provision_ec2_2" {
  source = "git::https://github.com/olluseun1/module.git"
  machine_name = "second machine"
  machine_key = "newkey"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

provider "aws" {
  #profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region = "eu-west-1"
}