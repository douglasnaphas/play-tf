terraform {
  backend "s3" {
    bucket = "remote-statefile-bucket-1-20200130"
    key    = "aws/terraform.tfstate"
    region = "us-east-1"
  }
}
