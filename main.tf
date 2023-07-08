module "provision_ec2_1" {
  source = "git::https://github.com/olluseun1/module.git"
  machine_name = var.sales_1_machine_name
  machine_key = var.sales_1_key_name
}

module "provision_ec2_2" {
  source = "git::https://github.com/olluseun1/module.git"
  machine_name = var.sales_2_machine_name
  machine_key = var.sales_2_key_name
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

sales_1_machine_name {}
sales_1_key_name {}
sales_2_machine_name {}
sales_2_key_name {}