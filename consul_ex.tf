terraform {
  required_version = "0.11.14"
}

provider "aws" {
  profile = "doug"
  region  = "us-east-1"
}

module "consul" {
  source      = "hashicorp/consul/aws"
  version     = "0.6.1"
  num_servers = "3"
}
