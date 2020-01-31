resource "aws_s3_bucket" "remote-statefile-bucket-1-20200130" {
  bucket = "remote-statefile-bucket-1-20200130"
  acl    = "private"

  versioning {
    enabled = true
  }
}
