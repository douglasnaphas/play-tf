resource "aws_s3_bucket" "terraform-sub-dir-bucket-b" {
  bucket = "terraform-sub-dir-bucket-b"
  acl    = "private"

  versioning {
    enabled = true
  }
}
