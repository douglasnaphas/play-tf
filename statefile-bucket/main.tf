provider "aws" {
  region = "us-east-1"
}

module "remote-statefile-bucket" {
  source = "./modules/remote-statefile-bucket"
}

resource "aws_s3_bucket" "remote-statefile-bucket-2-20200130" {
  bucket = "remote-statefile-bucket-2-20200130"
  acl    = "private"

  versioning {
    enabled = true
  }
}
