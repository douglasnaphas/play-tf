resource "aws_s3_bucket" "terraform-sub-dir-bucket-a" {
  bucket = "terraform-sub-dir-bucket-a"
  acl    = "private"

  versioning {
    enabled = true
  }
}
