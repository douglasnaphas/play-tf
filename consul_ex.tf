terraform {
  required_version = "0.11.14"
}

provider "aws" {
  profile = "${var.aws_profile}"
  region  = "${var.aws_region}"
}

module "consul" {
  source      = "hashicorp/consul/aws"
  version     = "0.6.1"
  num_servers = "3"
}

output "consul_server_asg_name" {
  value = "${module.consul.asg_name_servers}"
}
